; Auto-generated. Do not edit!


(cl:in-package r3liveGPU-msg)


;//! \htmlinclude Int32_PointCloud.msg.html

(cl:defclass <Int32_PointCloud> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (laserCloudSelNum
    :reader laserCloudSelNum
    :initarg :laserCloudSelNum
    :type r3liveGPU-msg:StampedInt32
    :initform (cl:make-instance 'r3liveGPU-msg:StampedInt32))
   (laserCloudOri
    :reader laserCloudOri
    :initarg :laserCloudOri
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass Int32_PointCloud (<Int32_PointCloud>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Int32_PointCloud>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Int32_PointCloud)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name r3liveGPU-msg:<Int32_PointCloud> is deprecated: use r3liveGPU-msg:Int32_PointCloud instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Int32_PointCloud>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader r3liveGPU-msg:header-val is deprecated.  Use r3liveGPU-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'laserCloudSelNum-val :lambda-list '(m))
(cl:defmethod laserCloudSelNum-val ((m <Int32_PointCloud>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader r3liveGPU-msg:laserCloudSelNum-val is deprecated.  Use r3liveGPU-msg:laserCloudSelNum instead.")
  (laserCloudSelNum m))

(cl:ensure-generic-function 'laserCloudOri-val :lambda-list '(m))
(cl:defmethod laserCloudOri-val ((m <Int32_PointCloud>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader r3liveGPU-msg:laserCloudOri-val is deprecated.  Use r3liveGPU-msg:laserCloudOri instead.")
  (laserCloudOri m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Int32_PointCloud>) ostream)
  "Serializes a message object of type '<Int32_PointCloud>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'laserCloudSelNum) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'laserCloudOri) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Int32_PointCloud>) istream)
  "Deserializes a message object of type '<Int32_PointCloud>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'laserCloudSelNum) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'laserCloudOri) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Int32_PointCloud>)))
  "Returns string type for a message object of type '<Int32_PointCloud>"
  "r3liveGPU/Int32_PointCloud")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Int32_PointCloud)))
  "Returns string type for a message object of type 'Int32_PointCloud"
  "r3liveGPU/Int32_PointCloud")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Int32_PointCloud>)))
  "Returns md5sum for a message object of type '<Int32_PointCloud>"
  "f578a8dccc9b97e85c78578fe1b3ae7a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Int32_PointCloud)))
  "Returns md5sum for a message object of type 'Int32_PointCloud"
  "f578a8dccc9b97e85c78578fe1b3ae7a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Int32_PointCloud>)))
  "Returns full string definition for message of type '<Int32_PointCloud>"
  (cl:format cl:nil "# Int32_PointCloud.msg~%~%std_msgs/Header header~%r3liveGPU/StampedInt32 laserCloudSelNum~%sensor_msgs/PointCloud2 laserCloudOri~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: r3liveGPU/StampedInt32~%# StampedInt32.msg~%~%std_msgs/Header header~%std_msgs/Int32 data~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Int32_PointCloud)))
  "Returns full string definition for message of type 'Int32_PointCloud"
  (cl:format cl:nil "# Int32_PointCloud.msg~%~%std_msgs/Header header~%r3liveGPU/StampedInt32 laserCloudSelNum~%sensor_msgs/PointCloud2 laserCloudOri~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: r3liveGPU/StampedInt32~%# StampedInt32.msg~%~%std_msgs/Header header~%std_msgs/Int32 data~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Int32_PointCloud>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'laserCloudSelNum))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'laserCloudOri))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Int32_PointCloud>))
  "Converts a ROS message object to a list"
  (cl:list 'Int32_PointCloud
    (cl:cons ':header (header msg))
    (cl:cons ':laserCloudSelNum (laserCloudSelNum msg))
    (cl:cons ':laserCloudOri (laserCloudOri msg))
))
