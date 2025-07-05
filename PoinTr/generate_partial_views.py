import open3d as o3d
import numpy as np
import os
import copy
import json
import argparse

def create_dirs(base_dir, taxonomy_id, model_id):
    dirs = {}
    for split in ["train", "test", "val"]:
        complete_dir = os.path.join(base_dir, split, "complete", taxonomy_id)
        partial_dir = os.path.join(base_dir, split, "partial", taxonomy_id, model_id)
        os.makedirs(complete_dir, exist_ok=True)
        os.makedirs(partial_dir, exist_ok=True)
        dirs[split] = {"complete": complete_dir, "partial": partial_dir}
    return dirs

def generate_partial_views(pcd, num_views=8, keep_ratio=0.5):
    partials = []
    for i in range(num_views):
        pcd_copy = copy.deepcopy(pcd)
        angles = np.random.uniform(0, 2 * np.pi, size=3)
        R = pcd_copy.get_rotation_matrix_from_xyz(angles)
        pcd_copy.rotate(R, center=pcd_copy.get_center())
        points = np.asarray(pcd_copy.points)
        num_keep = int(points.shape[0] * keep_ratio)
        indices = np.random.choice(points.shape[0], num_keep, replace=False)
        partial = o3d.geometry.PointCloud()
        partial.points = o3d.utility.Vector3dVector(points[indices])
        partials.append(partial)
    return partials

def save_pcn_format(pcd_path, taxonomy_id, taxonomy_name, model_id, base_dir, num_views=8, keep_ratio=0.5):
    pcd = o3d.io.read_point_cloud(pcd_path)
    dirs = create_dirs(base_dir, taxonomy_id, model_id)
    json_entry = {
        "taxonomy_id": taxonomy_id,
        "taxonomy_name": taxonomy_name,
        "train": [], "test": [], "val": []
    }

    for split in ["train", "test", "val"]:
        # 儲存完整點雲
        complete_path = os.path.join(dirs[split]["complete"], f"{model_id}.pcd")
        o3d.io.write_point_cloud(complete_path, pcd)

        # 生成並儲存 partials
        partials = generate_partial_views(pcd, num_views=num_views, keep_ratio=keep_ratio)
        partial_ids = []
        for i, partial in enumerate(partials):
            partial_path = os.path.join(dirs[split]["partial"], f"{i:02d}.pcd")
            o3d.io.write_point_cloud(partial_path, partial)
            partial_ids.append(f"{i:02d}")

        json_entry[split].append({
            "model_id": model_id,
            "rendering_images": [],
            "partial_ids": partial_ids
        })

    # 寫入 PCN.json
    json_path = os.path.join(base_dir, "PCN.json")
    with open(json_path, "w") as f:
        json.dump([json_entry], f, indent=2)
    print(f"✅ PCN 格式已建立，含 train/test/val，JSON 存於 {json_path}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('--pcd_path', required=True, help='輸入 .pcd 檔案路徑')
    parser.add_argument('--out_dir', required=True, help='PCN 格式輸出資料夾')
    parser.add_argument('--taxonomy_id', default="03001627", help='分類 ID，例如 chair: 03001627')
    parser.add_argument('--taxonomy_name', default="chair", help='分類名稱')
    parser.add_argument('--model_id', default="my_model", help='點雲檔案名稱（不含副檔名）')
    parser.add_argument('--num_views', type=int, default=8, help='每個 split 產生幾個 partial views')
    parser.add_argument('--keep_ratio', type=float, default=0.5, help='partial 保留比例')

    args = parser.parse_args()
    save_pcn_format(
        pcd_path=args.pcd_path,
        taxonomy_id=args.taxonomy_id,
        taxonomy_name=args.taxonomy_name,
        model_id=args.model_id,
        base_dir=args.out_dir,
        num_views=args.num_views,
        keep_ratio=args.keep_ratio
    )