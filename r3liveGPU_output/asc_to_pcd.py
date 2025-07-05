import open3d as o3d
import numpy as np
import os

# 設定來源和輸出資料夾
input_folder = input("asc files path: ")
output_folder = f'{input_folder}/output'

# 確保輸出資料夾存在
os.makedirs(output_folder, exist_ok=True)

# 遍歷資料夾中的所有 .asc 文件
for filename in os.listdir(input_folder):
    if filename.endswith(".asc"):
        asc_path = os.path.join(input_folder, filename)
        print(f"正在處理文件: {asc_path}")

        # 使用 comments="//" 忽略註釋行
        data = np.loadtxt(asc_path, comments="//")

        # 創建點雲對象
        pcd = o3d.geometry.PointCloud()
        pcd.points = o3d.utility.Vector3dVector(data[:, :3])  # 前三列是 X, Y, Z 座標

        # 處理顏色信息（假設顏色在第 4 到第 6 列）
        if data.shape[1] >= 6:
            colors = data[:, 3:6]  # 顏色數據已經在 0-1 範圍內
            pcd.colors = o3d.utility.Vector3dVector(colors)

        # 處理法向量信息（如果需要）
        if data.shape[1] >= 9:
            normals = data[:, 6:9]
            pcd.normals = o3d.utility.Vector3dVector(normals)

        # 保存為 PCD 文件，文件名與原始文件相同但擴展名為 .pcd
        output_path = os.path.join(output_folder, filename.replace(".asc", ".pcd"))
        o3d.io.write_point_cloud(output_path, pcd)
        print(f"點雲已成功保存為 {output_path}")

print("所有 .asc 文件處理完成")
