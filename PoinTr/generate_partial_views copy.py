import open3d as o3d
import numpy as np
import os
import copy
import argparse

def generate_partial_views(pcd_path, output_dir, num_views=100, keep_ratio=0.5):
    os.makedirs(output_dir, exist_ok=True)

    # 載入完整點雲
    pcd = o3d.io.read_point_cloud(pcd_path)
    points = np.asarray(pcd.points)

    for i in range(num_views):
        # 複製避免原點雲旋轉被疊加
        pcd_copy = copy.deepcopy(pcd)

        # 多軸隨機旋轉
        angles = np.random.uniform(0, 2 * np.pi, size=3)
        R = pcd_copy.get_rotation_matrix_from_xyz(angles)
        pcd_copy.rotate(R, center=pcd_copy.get_center())

        # 遮蔽：保留部分點
        points_rot = np.asarray(pcd_copy.points)
        num_keep = int(points_rot.shape[0] * keep_ratio)
        indices = np.random.choice(points_rot.shape[0], num_keep, replace=False)
        partial_points = points_rot[indices]

        # 存檔
        partial_pcd = o3d.geometry.PointCloud()
        partial_pcd.points = o3d.utility.Vector3dVector(partial_points)
        out_path = os.path.join(output_dir, f"{i:02d}.pcd")
        o3d.io.write_point_cloud(out_path, partial_pcd)
        print(f"Saved: {out_path}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('--pcd_path', type=str, required=True, help='輸入 .pcd 檔案路徑')
    parser.add_argument('--output_dir', type=str, default='./data/partial_views', help='output path name')
    args = parser.parse_args()
    generate_partial_views(
        pcd_path=args.pcd_path,
        output_dir=args.output_dir,
        num_views=100,
        keep_ratio=0.5
    )

