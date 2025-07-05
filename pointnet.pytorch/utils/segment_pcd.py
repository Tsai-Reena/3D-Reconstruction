import argparse
import numpy as np
import torch
from torch.autograd import Variable
from pointnet.model import PointNetDenseCls
import open3d as o3d
import os
from time import gmtime, strftime

parser = argparse.ArgumentParser()
parser.add_argument('--model', type=str, required=True, help='model path')
parser.add_argument('--pcd_path', type=str, required=True, help='input .pcd file')
parser.add_argument('--chunk_size', type=int, default=2048, help='number of points per chunk')
parser.add_argument('--voxel_size', type=float, default=0.05, help='voxel size for downsampling')
parser.add_argument('--save_dir', type=str, default='output_segments', help='directory to save class-wise .pcd files')
opt = parser.parse_args()
time = strftime("%Y-%m-%d_%H%M%S", gmtime())

# === 1. 載入並 voxel downsample ===
pcd = o3d.io.read_point_cloud(opt.pcd_path)
pcd = pcd.voxel_down_sample(voxel_size=opt.voxel_size)
points = np.asarray(pcd.points)
colors = np.asarray(pcd.colors)

# === 2. 中心化 + normalize ===
points_centered = points - points.mean(axis=0)
scale = np.max(np.linalg.norm(points_centered, axis=1))
points_normalized = points_centered / scale

# === 3. 載入模型 ===
state_dict = torch.load(opt.model)
k = state_dict['conv4.weight'].size()[0]
classifier = PointNetDenseCls(k=k)
classifier.load_state_dict(state_dict)
classifier.eval()

# === 4. 分段推論並分類收集 ===
chunk_size = opt.chunk_size
num_chunks = int(np.ceil(len(points_normalized) / chunk_size))

label_to_points = {i: [] for i in range(k)}
label_to_colors = {i: [] for i in range(k)}

for i in range(num_chunks):
    start = i * chunk_size
    end = min((i + 1) * chunk_size, len(points_normalized))

    chunk_points_norm = points_normalized[start:end]
    chunk_points_orig = points[start:end]
    chunk_colors = colors[start:end]

    # padding
    pad_len = 0
    if len(chunk_points_norm) < chunk_size:
        pad_len = chunk_size - len(chunk_points_norm)
        chunk_points_norm = np.vstack([chunk_points_norm, chunk_points_norm[:pad_len]])
        chunk_points_orig = np.vstack([chunk_points_orig, chunk_points_orig[:pad_len]])
        chunk_colors = np.vstack([chunk_colors, chunk_colors[:pad_len]])

    point_tensor = torch.tensor(chunk_points_norm, dtype=torch.float32).transpose(1, 0).unsqueeze(0)
    with torch.no_grad():
        pred, _, _ = classifier(point_tensor)
        pred_choice = pred.data.max(2)[1].squeeze().cpu().numpy()

    pred_choice = pred_choice[:end - start]  # remove padding
    for lbl in range(k):
        mask = (pred_choice == lbl)
        label_to_points[lbl].append(chunk_points_orig[:end - start][mask])
        label_to_colors[lbl].append(chunk_colors[:end - start][mask])

# === 5. 儲存每個 label 的 .pcd ===
os.makedirs(opt.save_dir, exist_ok=True)
total_saved = 0

for lbl in range(k):
    if label_to_points[lbl]:
        pts = np.vstack(label_to_points[lbl])
        cols = np.vstack(label_to_colors[lbl])
        if len(pts) == 0:
            continue
        out_pcd = o3d.geometry.PointCloud()
        out_pcd.points = o3d.utility.Vector3dVector(pts)
        out_pcd.colors = o3d.utility.Vector3dVector(cols)
        out_path = os.path.join(opt.save_dir, f'class_{lbl}_{time}.pcd')
        o3d.io.write_point_cloud(out_path, out_pcd)
        print(f"✅ Saved class {lbl} → {out_path} ({len(pts)} points)")
        total_saved += len(pts)

print(f"\n🎉 Done! Total points saved: {total_saved}")
