import open3d as o3d
import numpy as np
import argparse

parser = argparse.ArgumentParser()
parser.add_argument('--mesh_path', type=str, required=True)
parser.add_argument('--flatten_mesh', type=str, default=f"/home/user/r3liveGPU_output/flattened_mesh.ply")
opt = parser.parse_args()

# 1. 讀入 mesh
mesh = o3d.io.read_triangle_mesh(opt.mesh_path)
mesh.compute_vertex_normals()

# 2. 將 mesh 轉為 point cloud，擬合地板平面
pcd = mesh.sample_points_uniformly(number_of_points=5000)
plane_model, inliers = pcd.segment_plane(distance_threshold=0.01,
                                         ransac_n=3,
                                         num_iterations=1000)
[a, b, c, d] = plane_model
normal = np.array([a, b, c])

# 3. 將 mesh 的每個頂點投影到平面
vertices = np.asarray(mesh.vertices)
for i in range(len(vertices)):
    point = vertices[i]
    dist = (np.dot(normal, point) + d) / np.linalg.norm(normal)
    vertices[i] = point - dist * normal / np.linalg.norm(normal)

# 4. 更新頂點並匯出
mesh.vertices = o3d.utility.Vector3dVector(vertices)
o3d.io.write_triangle_mesh(opt.flatten_mesh, mesh)
print(f"已輸出平坦化後的 mesh 為{opt.flatten_mesh}")

