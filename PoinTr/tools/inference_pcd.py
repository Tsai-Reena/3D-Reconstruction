import argparse
import os
import numpy as np
import cv2
import sys
import open3d as o3d
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
sys.path.append(os.path.join(BASE_DIR, '../'))

from tools import builder
from utils.config import cfg_from_yaml_file
from utils import misc
from datasets.io import IO
from datasets.data_transforms import Compose

def get_args():
    parser = argparse.ArgumentParser()
    parser.add_argument('model_config', help='yaml config file')
    parser.add_argument('model_checkpoint', help='pretrained weight')
    parser.add_argument('--pc_root', type=str, default='', help='Pc root')
    parser.add_argument('--pc', type=str, default='', help='Pc file')
    parser.add_argument('--save_vis_img', action='store_true', default=False, help='whether to save img of complete point cloud')
    parser.add_argument('--out_pc_root', type=str, default='', help='root of the output pc file. Default not saving the visualization images.')
    parser.add_argument('--device', default='cuda:0', help='Device used for inference')
    parser.add_argument('--merge_input', action='store_true', default=False, help='merge input point cloud with completed output')
    args = parser.parse_args()

    assert args.save_vis_img or (args.out_pc_root != '')
    assert args.model_config is not None
    assert args.model_checkpoint is not None
    assert (args.pc != '') or (args.pc_root != '')

    return args

def inference_single(model, pc_path, args, config, root=None):
    if root is not None:
        pc_file = os.path.join(root, pc_path)
    else:
        pc_file = pc_path

    pc_ndarray = IO.get(pc_file).astype(np.float32)
    pc_input_original = pc_ndarray.copy()

    centroid = np.mean(pc_ndarray, axis=0)
    pc_ndarray = pc_ndarray - centroid
    m = np.max(np.sqrt(np.sum(pc_ndarray ** 2, axis=1)))
    pc_ndarray = pc_ndarray / m

    transform = Compose([{
        'callback': 'UpSamplePoints',
        'parameters': {'n_points': 2048},
        'objects': ['input']
    }, {
        'callback': 'ToTensor',
        'objects': ['input']
    }])

    pc_ndarray_normalized = transform({'input': pc_ndarray})
    ret = model(pc_ndarray_normalized['input'].unsqueeze(0).to(args.device.lower()))
    dense_points = ret[-1].squeeze(0).detach().cpu().numpy()

    dense_points = dense_points * m
    dense_points = dense_points + centroid

    

    if args.merge_input:
        merged_points = np.concatenate([pc_input_original, dense_points], axis=0)
    else:
        merged_points = dense_points

    if args.out_pc_root != '':
        target_path = os.path.join(args.out_pc_root, os.path.splitext(pc_path)[0])
        os.makedirs(target_path, exist_ok=True)

        model_name = os.path.basename(args.model_checkpoint).replace(".pth","")

        np.save(os.path.join(target_path, f'fine_{model_name}.npy'), dense_points)
        if args.save_vis_img:
            input_img = misc.get_ptcloud_img(pc_ndarray_normalized['input'].numpy())
            dense_img = misc.get_ptcloud_img(dense_points)
            cv2.imwrite(os.path.join(target_path, f'input_{model_name}.jpg'), input_img)
            cv2.imwrite(os.path.join(target_path, f'fine_{model_name}.jpg'), dense_img)

        pcd = o3d.geometry.PointCloud()
        pcd.points = o3d.utility.Vector3dVector(merged_points)
        o3d.io.write_point_cloud(os.path.join(target_path, f"output_{model_name}.pcd"), pcd)

        pcd_input = o3d.geometry.PointCloud()
        pcd_input.points = o3d.utility.Vector3dVector(pc_input_original)
        pcd_input.paint_uniform_color([1, 0, 0])  # red

        pcd_gen = o3d.geometry.PointCloud()
        pcd_gen.points = o3d.utility.Vector3dVector(dense_points)
        pcd_gen.paint_uniform_color([0, 1, 0])  # green

        merged_colored = pcd_input + pcd_gen
        o3d.io.write_point_cloud(os.path.join(target_path, f"merged_colored_{model_name}.pcd"), merged_colored)

def align_to_principal_axes(points):
    centroid = np.mean(points, axis=0)
    centered = points - centroid
    cov = np.cov(centered.T)
    eigvals, eigvecs = np.linalg.eigh(cov)
    aligned = centered @ eigvecs
    return aligned + centroid

def main():
    args = get_args()
    config = cfg_from_yaml_file(args.model_config)
    base_model = builder.model_builder(config.model)
    builder.load_model(base_model, args.model_checkpoint)
    base_model.to(args.device.lower())
    base_model.eval()

    if args.pc_root != '':
        pc_file_list = os.listdir(args.pc_root)
        for pc_file in pc_file_list:
            inference_single(base_model, pc_file, args, config, root=args.pc_root)
    else:
        inference_single(base_model, args.pc, args, config)

if __name__ == '__main__':
    main()