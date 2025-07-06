#!/bin/bash

source ./config/system_config.conf

# === 每個 node 在獨立 terminal 啟動 ===

# RVIZ + R3LIVE Mapping
gnome-terminal -- bash -c "
source $WORKSPACE/catkin_ws/devel/setup.bash
roslaunch r3liveGPU r3liveGPU_bag_mydata.launch
exec bash"

# Python: Projection Service
gnome-terminal -- bash -c "
source ~/anaconda3/etc/profile.d/conda.sh
conda activate r3liveGPU
sleep 5
source $WORKSPACE/catkin_ws/devel/setup.bash
rosrun r3live_pts_projection projection_service_v7.4.py --model $SEGMENTATION_MODEL --pcd_filename $OUTPUT_DIR/$GLOBAL_PCD_NAME
exec bash"

# Python: Segmentation Service v1.2
gnome-terminal -- bash -c "
source ~/anaconda3/etc/profile.d/conda.sh
conda activate r3liveGPU
sleep 5
source $WORKSPACE/catkin_ws/devel/setup.bash
rosrun r3live_pts_segmentation segmentation_service_v1.2.py
exec bash"

# Python: Segmentation Service v1.3
gnome-terminal -- bash -c "
source ~/anaconda3/etc/profile.d/conda.sh
conda activate r3liveGPU
source $WORKSPACE/catkin_ws/devel/setup.bash
rosrun r3live_pts_segmentation segmentation_service_v1.3.py --output_pcd_filepath $OUTPUT_DIR/$SEGMENTED_PCD_NAME
exec bash"

# Python: Kalman Filter Node
gnome-terminal -- bash -c "
source ~/anaconda3/etc/profile.d/conda.sh
conda activate r3liveGPU
sleep 5
source $WORKSPACE/catkin_ws/devel/setup.bash
rosrun kalman_filter_python KalmanNode5_v1.py
exec bash"

# 播放 rosbag
source $WORKSPACE/catkin_ws/devel/setup.bash
sleep 50
rosbag play $BAG_PATH --clock

echo "✅ R3LIVE Enhancement Stage has finished. You can close the external terminals. The global point cloud is in $OUTPUT_DIR/$GLOBAL_PCD_NAME, and the segmented point cloud is in $OUTPUT_DIR/$SEGMENTED_PCD_NAME."
