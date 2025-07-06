;; Auto-generated. Do not edit!


(when (boundp 'r3liveGPU::StampedInt32)
  (if (not (find-package "R3LIVEGPU"))
    (make-package "R3LIVEGPU"))
  (shadow 'StampedInt32 (find-package "R3LIVEGPU")))
(unless (find-package "R3LIVEGPU::STAMPEDINT32")
  (make-package "R3LIVEGPU::STAMPEDINT32"))

(in-package "ROS")
;;//! \htmlinclude StampedInt32.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass r3liveGPU::StampedInt32
  :super ros::object
  :slots (_header _data ))

(defmethod r3liveGPU::StampedInt32
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) (instance std_msgs::Int32 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Int32 _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Int32 _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Int32 _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(setf (get r3liveGPU::StampedInt32 :md5sum-) "b9f390858a15eeec6932d08bb09b9fed")
(setf (get r3liveGPU::StampedInt32 :datatype-) "r3liveGPU/StampedInt32")
(setf (get r3liveGPU::StampedInt32 :definition-)
      "# StampedInt32.msg

std_msgs/Header header
std_msgs/Int32 data

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
MSG: std_msgs/Int32
int32 data
")



(provide :r3liveGPU/StampedInt32 "b9f390858a15eeec6932d08bb09b9fed")


