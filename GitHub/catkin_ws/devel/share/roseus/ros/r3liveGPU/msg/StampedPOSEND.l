;; Auto-generated. Do not edit!


(when (boundp 'r3liveGPU::StampedPOSEND)
  (if (not (find-package "R3LIVEGPU"))
    (make-package "R3LIVEGPU"))
  (shadow 'StampedPOSEND (find-package "R3LIVEGPU")))
(unless (find-package "R3LIVEGPU::STAMPEDPOSEND")
  (make-package "R3LIVEGPU::STAMPEDPOSEND"))

(in-package "ROS")
;;//! \htmlinclude StampedPOSEND.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass r3liveGPU::StampedPOSEND
  :super ros::object
  :slots (_header _pos_end ))

(defmethod r3liveGPU::StampedPOSEND
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pos_end __pos_end) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _pos_end __pos_end)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pos_end
   (&rest __pos_end)
   (if (keywordp (car __pos_end))
       (send* _pos_end __pos_end)
     (progn
       (if __pos_end (setq _pos_end (car __pos_end)))
       _pos_end)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Point _pos_end
    (send _pos_end :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Point _pos_end
       (send _pos_end :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Point _pos_end
     (send _pos_end :deserialize buf ptr-) (incf ptr- (send _pos_end :serialization-length))
   ;;
   self)
  )

(setf (get r3liveGPU::StampedPOSEND :md5sum-) "3973d5c119d824fdcb60b2abfa99d0bc")
(setf (get r3liveGPU::StampedPOSEND :datatype-) "r3liveGPU/StampedPOSEND")
(setf (get r3liveGPU::StampedPOSEND :definition-)
      "# StampedPOSEND.msg

std_msgs/Header header
geometry_msgs/Point pos_end

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :r3liveGPU/StampedPOSEND "3973d5c119d824fdcb60b2abfa99d0bc")


