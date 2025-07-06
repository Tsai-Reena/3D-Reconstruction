#!/bin/bash

source ./config/system_config.conf

# === 啟用 Conda 環境 ===
source ~/anaconda3/etc/profile.d/conda.sh
conda activate paint3d

# === 移動到 Paint3D 資料夾 ===
cd $PAINT3D_DIR

# === 執行 Paint3D 第一階段 pipeline ===
echo "Start executing Paint3D Stage1 ..."
python pipeline_paint3d_stage1.py \
  --sd_config controlnet/config/depth_based_inpaint_template.yaml \
  --render_config paint3d/config/train_config_paint3d.py \
  --mesh_path $PAINT3D_DIR/demo/objs/$OUTPUT_OBJ_NAME/$OBJ_OUTPUT \
  --prompt " " \
  --ip_adapter_image_path $IMG_PROMPT \
  --outdir outputs/$OUTPUT_OBJ_NAME/stage1

echo "Start executing Paint3D Stage2 ..."
python pipeline_paint3d_stage2.py \
  --sd_config controlnet/config/UV_based_inpaint_template.yaml \
  --render_config paint3d/config/train_config_paint3d.py \
  --mesh_path $PAINT3D_DIR/demo/objs/$OUTPUT_OBJ_NAME/$OBJ_OUTPUT \
  --texture_path outputs/$OUTPUT_OBJ_NAME/stage1/res-0/albedo.png \
  --prompt " " \
  --ip_adapter_image_path $IMG_PROMPT \
  --outdir outputs/$OUTPUT_OBJ_NAME/stage2

cp $PAINT3D_DIR/demo/objs/$OUTPUT_OBJ_NAME/$OBJ_OUTPUT "outputs/$OUTPUT_OBJ_NAME/stage2/tile_res_0"
cp $PAINT3D_DIR/demo/objs/$OUTPUT_OBJ_NAME/$OBJ_OUTPUT.mtl "outputs/$OUTPUT_OBJ_NAME/stage2/tile_res_0"

# === 修改 MTL 檔案中的貼圖名稱 ===
sed -i 's/map_Kd material_0.png/map_Kd albedo.png/' "outputs/$OUTPUT_OBJ_NAME/stage2/tile_res_0/$OBJ_OUTPUT.mtl"

cp -r outputs/$OUTPUT_OBJ_NAME/stage2/tile_res_0 $WORKSPACE/outputs
rm -rf $WORKSPACE/outputs/$OUTPUT_OBJ_NAME
mv $WORKSPACE/outputs/tile_res_0 $WORKSPACE/outputs/$OUTPUT_OBJ_NAME

echo "✅ Paint3D Stage Finished. The Final Object is saved in $WORKSPACE/outputs/$OUTPUT_OBJ_NAME"
