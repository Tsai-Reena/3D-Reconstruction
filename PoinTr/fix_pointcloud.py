import open3d as o3d
import os
import numpy as np

def fix_point_count(pcd_path, npoints=16384):
    pcd = o3d.io.read_point_cloud(pcd_path)
    points = pcd.points
    if len(points) > npoints:
        # 隨機取樣
        idx = np.random.choice(len(points), npoints, replace=False)
        pcd.points = o3d.utility.Vector3dVector(np.asarray(points)[idx])
    elif len(points) < npoints:
        # 補點（重複）
        extra = np.random.choice(len(points), npoints - len(points), replace=True)
        combined = np.concatenate([np.asarray(points), np.asarray(points)[extra]], axis=0)
        pcd.points = o3d.utility.Vector3dVector(combined)
    return pcd

# 批次處理資料夾
def process_all_pcds(root_dir):
    for root, _, files in os.walk(root_dir):
        for file in files:
            if file.endswith(".pcd"):
                full_path = os.path.join(root, file)
                pcd = fix_point_count(full_path, 16384)
                o3d.io.write_point_cloud(full_path, pcd)
                print("Fixed:", full_path)

# 指定完整點雲路徑
process_all_pcds("data/Tree/train/complete")
process_all_pcds("data/Tree/val/complete")
process_all_pcds("data/Tree/test/complete")
