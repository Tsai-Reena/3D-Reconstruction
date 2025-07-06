#!/bin/bash

source ./config/system_config.conf

if $IS_POINTR; then
    cp $OUTPUT_DIR/$SEGMENTED_PCD_NAME.pcd "$POINTR_DIR/demo"
    cd $POINTR_DIR
    source ~/anaconda3/etc/profile.d/conda.sh
    conda activate PoinTr
    python tools/inference_pcd.py cfgs/PCN_models/PoinTr.yaml ckpts/$POINTR_MODEL --pc_root demo/ --save_vis_img --out_pc_root inference_result/ --merge_input
    conda deactivate
    cp $POINTR_DIR/inference_result/$SEGMENTED_PCD_NAME/merged_colored_PCN_example_demoTrain.pcd $OUTPUT_DIR
    SEGMENTED_PCD_NAME=merged_colored_PCN_example_demoTrain
fi

if $USE_POSSION; then
    EXECUTABLE=mesh_reconstruction_poissonTexture
else
    EXECUTABLE=mesh_reconstruction_greedyColor
fi

# === 重建 build 資料夾並重新編譯 ===
rm -rf "$WORKSPACE/pcl_mesh_reconstruction/build"
mkdir -p "$WORKSPACE/pcl_mesh_reconstruction/build"
cd "$WORKSPACE/pcl_mesh_reconstruction/build"

cmake ..
make -j$(nproc)

echo "Build Finished. Reconstructing $SEGMENTED_PCD_NAME mesh using $EXECUTABLE ..."

# === reconstruction mesh PLY ===
$WORKSPACE/pcl_mesh_reconstruction/build/$EXECUTABLE "$OUTPUT_DIR/$SEGMENTED_PCD_NAME.pcd" "$OUTPUT_DIR/$OUTPUT_PLY"

# === 執行 flatten.py 展平網格（僅當 IS_FLATTEN=true 時） ===
if [ "$IS_FLATTEN" = true ]; then
  echo "Flattening mesh ..."
  source ~/anaconda3/etc/profile.d/conda.sh
  conda activate NeRF-SLAM
  python $WORKSPACE/pcl_mesh_reconstruction/flatten.py --mesh_path $OUTPUT_DIR/$OUTPUT_PLY --flatten_mesh $OUTPUT_DIR/$OUTPUT_PLY
  conda deactivate
fi

echo "Start Converting into OBJ ..."

# === 重建 Paint3D 中的物件資料夾 ===
rm -rf "$PAINT3D_DIR/demo/objs/$OUTPUT_OBJ_NAME/"
mkdir -p "$PAINT3D_DIR/demo/objs/$OUTPUT_OBJ_NAME/"

# === 使用 MeshLab Server 做 UV 展開並匯出 OBJ + MTL ===
meshlabserver -i "$OUTPUT_DIR/$OUTPUT_PLY" -o "$PAINT3D_DIR/demo/objs/$OUTPUT_OBJ_NAME/$OBJ_OUTPUT" -m wt -s "$WORKSPACE/config/trivial_uv.mlx"

echo "Converting Success. Start generating initial texture ... "

# === 對應並做出初始的貼圖（空白）===
echo "map_Kd material_0.png" >> $PAINT3D_DIR/demo/objs/$OUTPUT_OBJ_NAME/$OBJ_OUTPUT.mtl
cp $PAINT3D_DIR/demo/material_0.png "$PAINT3D_DIR/demo/objs/$OUTPUT_OBJ_NAME/"

echo "✅ Generating initial texture successfully. The generated OBJ + MTL + PNG is in $PAINT3D_DIR/demo/objs/$OUTPUT_OBJ_NAME/ (no texture)"
