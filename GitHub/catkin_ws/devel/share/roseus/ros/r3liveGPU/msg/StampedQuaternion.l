;; Auto-generated. Do not edit!


(when (boundp 'r3liveGPU::StampedQuaternion)
  (if (not (find-package "R3LIVEGPU"))
    (make-package "R3LIVEGPU"))
  (shadow 'StampedQuaternion (find-package "R3LIVEGPU")))
(unless (find-package "R3LIVEGPU::STAMPEDQUATERNION")
  (make-package "R3LIVEGPU::STAMPEDQUATERNION"))

(in-package "ROS")
;;//! \htmlinclude StampedQuaternion.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass r3liveGPU::StampedQuaternion
  :super ros::object
  :slots (_header _geoQuat ))

(defmethod r3liveGPU::StampedQuaternion
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:geoQuat __geoQuat) (instance geometry_msgs::Quaternion :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _geoQuat __geoQuat)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:geoQuat
   (&rest __geoQuat)
   (if (keywordp (car __geoQuat))
       (send* _geoQuat __geoQuat)
     (progn
       (if __geoQuat (setq _geoQuat (car __geoQuat)))
       _geoQuat)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Quaternion _geoQuat
    (send _geoQuat :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Quaternion _geoQuat
       (send _geoQuat :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Quaternion _geoQuat
     (send _geoQuat :deserialize buf ptr-) (incf ptr- (send _geoQuat :serialization-length))
   ;;
   self)
  )

(setf (get r3liveGPU::StampedQuaternion :md5sum-) "90a2df2d0b1ff055b3959b6ad0eb308e")
(setf (get r3liveGPU::StampedQuaternion :datatype-) "r3liveGPU/StampedQuaternion")
(setf (get r3liveGPU::StampedQuaternion :definition-)
      "# StampedQuaternion.msg

std_msgs/Header header
geometry_msgs/Quaternion geoQuat

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
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :r3liveGPU/StampedQuaternion "90a2df2d0b1ff055b3959b6ad0eb308e")


