import numpy as np
import os
import json
import random
from pathlib import Path
import argparse

parser = argparse.ArgumentParser()
parser.add_argument('--class_name', type=str, default='00000000', help='class name (number)')
parser.add_argument('--asc_name', type=str, required=True, help='segmented asc file name')
parser.add_argument('--data_num', type=int, default=2690, help='number of everall data')
parser.add_argument('--folder_name', type=str, required=True, help='folder name of dataset')
parser.add_argument('--data_start', type=int, default=0, help='number of data start')
opt = parser.parse_args()

if not os.path.exists(f"./{opt.folder_name}/{opt.class_name}/points"):
    os.makedirs(f"./{opt.folder_name}/{opt.class_name}/points")
if not os.path.exists(f"./{opt.folder_name}/{opt.class_name}/points_label"):
    os.makedirs(f"./{opt.folder_name}/{opt.class_name}/points_label")
if not os.path.exists(f"./{opt.folder_name}/train_test_split"):
    os.makedirs(f"./{opt.folder_name}/train_test_split")

pts_path = f"./{opt.folder_name}/{opt.class_name}/points/my_scene"
seg_path = f"./{opt.folder_name}/{opt.class_name}/points_label/my_scene"

# ===================== Step.01 =============================================
# 讀取 .asc（其實跟 .txt 一樣處理）
data = np.loadtxt(opt.asc_name)

# 提取前 3 欄作為點雲座標
points = data[:, :3]

# 提取第 7 欄（index=7）作為 segmentation label
labels = data[:, 8].astype(int) + 1

# 儲存成符合 ShapeNetPart 格式的 .pts / .seg
np.savetxt(f'{pts_path}.pts', points, fmt="%.6f")
np.savetxt(f'{seg_path}.seg', labels, fmt="%d")

print("✅ Step 1 Done: my_scene.pts 和 my_scene.seg 已儲存")

# ===================== Step.02 =============================================

points = np.loadtxt(f'{pts_path}.pts')     # shape: (N, 3)
labels = np.loadtxt(f'{seg_path}.seg')     # shape: (N,)

def augment_pointcloud(points):
    # 隨機 Z 軸旋轉
    theta = np.random.uniform(0, 2*np.pi)
    rot_mat = np.array([
        [np.cos(theta), -np.sin(theta), 0],
        [np.sin(theta),  np.cos(theta), 0],
        [0,              0,             1]
    ])
    points = points @ rot_mat.T

    # 隨機縮放
    scale = np.random.uniform(0.8, 1.2)
    points = points * scale

    # 隨機平移
    shift = np.random.uniform(-0.1, 0.1, (1, 3))
    points = points + shift

    # 隨機 jitter
    noise = np.random.normal(0, 0.005, size=points.shape)
    points = points + noise

    return points


for i in range(opt.data_start, opt.data_start + opt.data_num - 1):  # 產生 2689 筆增強資料
    aug_points = augment_pointcloud(points)
    np.savetxt(f"{pts_path}_aug_{i}.pts", aug_points, fmt="%.6f")
    np.savetxt(f"{seg_path}_aug_{i}.seg", labels, fmt="%d")
    print(f"Create augmented data {i + 1}")

print(f"✅ Step 2 Done: 資料增強完成，總共輸出從 {opt.data_start} 開始共 {opt.data_num} 筆資料")

# ===================== Step.03 =============================================
base_dir = Path(f"./{opt.folder_name}/{opt.class_name}/")  # ← 請替換為你的根目錄（包含 points/ 和 points_label/）
points_dir = base_dir / "points"
labels_dir = base_dir / "points_label"

# === 掃描所有對應的 .pts + .seg 檔案 ===
file_stems = [
    f.stem for f in points_dir.glob("*.pts")
    if (labels_dir / f"{f.stem}.seg").exists()
]

# === 建立 shape_data 格式的路徑 ===
shape_paths = [f"shape_data/{opt.class_name}/{stem}" for stem in file_stems]

# === 隨機打亂並切分成 train / val / test ===
random.seed(42)
random.shuffle(shape_paths)
total = len(shape_paths)
train_end = int(0.8 * total)
val_end = train_end + int(0.1 * total)

train_paths = shape_paths[:train_end]
val_paths = shape_paths[train_end:val_end]
test_paths = shape_paths[val_end:]

# === 儲存三個 JSON ===
def save_json(data, filename):
    with open(filename, "w") as f:
        json.dump(data, f, indent=2)

save_json(train_paths, f"./{opt.folder_name}/train_test_split/shuffled_train_file_list.json")
save_json(val_paths, f"./{opt.folder_name}/train_test_split/shuffled_val_file_list.json")
save_json(test_paths, f"./{opt.folder_name}/train_test_split/shuffled_test_file_list.json")

# 使用製表符（tab）來填充空白
content = f"Floor\t{opt.class_name}"

# 打開並寫入 txt 檔案
with open(f"./{opt.folder_name}/synsetoffset2category.txt", "w") as file:
    file.write(content)

print("✅ Step 3 Done: 3 split JSON files & synsetoffset2category.txt saved.")
