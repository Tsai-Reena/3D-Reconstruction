; Auto-generated. Do not edit!


(cl:in-package r3liveGPU-msg)


;//! \htmlinclude StampedInt32.msg.html

(cl:defclass <StampedInt32> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32)))
)

(cl:defclass StampedInt32 (<StampedInt32>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StampedInt32>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StampedInt32)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name r3liveGPU-msg:<StampedInt32> is deprecated: use r3liveGPU-msg:StampedInt32 instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <StampedInt32>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader r3liveGPU-msg:header-val is deprecated.  Use r3liveGPU-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <StampedInt32>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader r3liveGPU-msg:data-val is deprecated.  Use r3liveGPU-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StampedInt32>) ostream)
  "Serializes a message object of type '<StampedInt32>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StampedInt32>) istream)
  "Deserializes a message object of type '<StampedInt32>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StampedInt32>)))
  "Returns string type for a message object of type '<StampedInt32>"
  "r3liveGPU/StampedInt32")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StampedInt32)))
  "Returns string type for a message object of type 'StampedInt32"
  "r3liveGPU/StampedInt32")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StampedInt32>)))
  "Returns md5sum for a message object of type '<StampedInt32>"
  "b9f390858a15eeec6932d08bb09b9fed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StampedInt32)))
  "Returns md5sum for a message object of type 'StampedInt32"
  "b9f390858a15eeec6932d08bb09b9fed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StampedInt32>)))
  "Returns full string definition for message of type '<StampedInt32>"
  (cl:format cl:nil "# StampedInt32.msg~%~%std_msgs/Header header~%std_msgs/Int32 data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StampedInt32)))
  "Returns full string definition for message of type 'StampedInt32"
  (cl:format cl:nil "# StampedInt32.msg~%~%std_msgs/Header header~%std_msgs/Int32 data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StampedInt32>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StampedInt32>))
  "Converts a ROS message object to a list"
  (cl:list 'StampedInt32
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))
