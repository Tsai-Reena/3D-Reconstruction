;; Auto-generated. Do not edit!


(when (boundp 'r3liveGPU::StampedEulerCur)
  (if (not (find-package "R3LIVEGPU"))
    (make-package "R3LIVEGPU"))
  (shadow 'StampedEulerCur (find-package "R3LIVEGPU")))
(unless (find-package "R3LIVEGPU::STAMPEDEULERCUR")
  (make-package "R3LIVEGPU::STAMPEDEULERCUR"))

(in-package "ROS")
;;//! \htmlinclude StampedEulerCur.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass r3liveGPU::StampedEulerCur
  :super ros::object
  :slots (_header _euler_cur ))

(defmethod r3liveGPU::StampedEulerCur
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:euler_cur __euler_cur) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _euler_cur __euler_cur)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:euler_cur
   (&rest __euler_cur)
   (if (keywordp (car __euler_cur))
       (send* _euler_cur __euler_cur)
     (progn
       (if __euler_cur (setq _euler_cur (car __euler_cur)))
       _euler_cur)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Vector3 _euler_cur
    (send _euler_cur :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Vector3 _euler_cur
       (send _euler_cur :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Vector3 _euler_cur
     (send _euler_cur :deserialize buf ptr-) (incf ptr- (send _euler_cur :serialization-length))
   ;;
   self)
  )

(setf (get r3liveGPU::StampedEulerCur :md5sum-) "0192c2a77e104beded3cf510e007f9c7")
(setf (get r3liveGPU::StampedEulerCur :datatype-) "r3liveGPU/StampedEulerCur")
(setf (get r3liveGPU::StampedEulerCur :definition-)
      "# StampedEulerCur.msg

std_msgs/Header header
geometry_msgs/Vector3 euler_cur

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
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :r3liveGPU/StampedEulerCur "0192c2a77e104beded3cf510e007f9c7")


