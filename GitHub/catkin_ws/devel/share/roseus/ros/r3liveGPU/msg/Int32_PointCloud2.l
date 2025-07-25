;; Auto-generated. Do not edit!


(when (boundp 'r3liveGPU::Int32_PointCloud2)
  (if (not (find-package "R3LIVEGPU"))
    (make-package "R3LIVEGPU"))
  (shadow 'Int32_PointCloud2 (find-package "R3LIVEGPU")))
(unless (find-package "R3LIVEGPU::INT32_POINTCLOUD2")
  (make-package "R3LIVEGPU::INT32_POINTCLOUD2"))

(in-package "ROS")
;;//! \htmlinclude Int32_PointCloud2.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass r3liveGPU::Int32_PointCloud2
  :super ros::object
  :slots (_header _laserCloudSelNum _laserCloudOri _coeffSel ))

(defmethod r3liveGPU::Int32_PointCloud2
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:laserCloudSelNum __laserCloudSelNum) (instance r3liveGPU::StampedInt32 :init))
    ((:laserCloudOri __laserCloudOri) (instance sensor_msgs::PointCloud2 :init))
    ((:coeffSel __coeffSel) (instance sensor_msgs::PointCloud2 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _laserCloudSelNum __laserCloudSelNum)
   (setq _laserCloudOri __laserCloudOri)
   (setq _coeffSel __coeffSel)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:laserCloudSelNum
   (&rest __laserCloudSelNum)
   (if (keywordp (car __laserCloudSelNum))
       (send* _laserCloudSelNum __laserCloudSelNum)
     (progn
       (if __laserCloudSelNum (setq _laserCloudSelNum (car __laserCloudSelNum)))
       _laserCloudSelNum)))
  (:laserCloudOri
   (&rest __laserCloudOri)
   (if (keywordp (car __laserCloudOri))
       (send* _laserCloudOri __laserCloudOri)
     (progn
       (if __laserCloudOri (setq _laserCloudOri (car __laserCloudOri)))
       _laserCloudOri)))
  (:coeffSel
   (&rest __coeffSel)
   (if (keywordp (car __coeffSel))
       (send* _coeffSel __coeffSel)
     (progn
       (if __coeffSel (setq _coeffSel (car __coeffSel)))
       _coeffSel)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; r3liveGPU/StampedInt32 _laserCloudSelNum
    (send _laserCloudSelNum :serialization-length)
    ;; sensor_msgs/PointCloud2 _laserCloudOri
    (send _laserCloudOri :serialization-length)
    ;; sensor_msgs/PointCloud2 _coeffSel
    (send _coeffSel :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; r3liveGPU/StampedInt32 _laserCloudSelNum
       (send _laserCloudSelNum :serialize s)
     ;; sensor_msgs/PointCloud2 _laserCloudOri
       (send _laserCloudOri :serialize s)
     ;; sensor_msgs/PointCloud2 _coeffSel
       (send _coeffSel :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; r3liveGPU/StampedInt32 _laserCloudSelNum
     (send _laserCloudSelNum :deserialize buf ptr-) (incf ptr- (send _laserCloudSelNum :serialization-length))
   ;; sensor_msgs/PointCloud2 _laserCloudOri
     (send _laserCloudOri :deserialize buf ptr-) (incf ptr- (send _laserCloudOri :serialization-length))
   ;; sensor_msgs/PointCloud2 _coeffSel
     (send _coeffSel :deserialize buf ptr-) (incf ptr- (send _coeffSel :serialization-length))
   ;;
   self)
  )

(setf (get r3liveGPU::Int32_PointCloud2 :md5sum-) "27f54a123896653a8d283d67794695c0")
(setf (get r3liveGPU::Int32_PointCloud2 :datatype-) "r3liveGPU/Int32_PointCloud2")
(setf (get r3liveGPU::Int32_PointCloud2 :definition-)
      "# Int32_PointCloud2.msg

std_msgs/Header header
r3liveGPU/StampedInt32 laserCloudSelNum
sensor_msgs/PointCloud2 laserCloudOri
sensor_msgs/PointCloud2 coeffSel

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: r3liveGPU/StampedInt32
# StampedInt32.msg

std_msgs/Header header
std_msgs/Int32 data

================================================================================
MSG: std_msgs/Int32
int32 data
================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

")



(provide :r3liveGPU/Int32_PointCloud2 "27f54a123896653a8d283d67794695c0")


