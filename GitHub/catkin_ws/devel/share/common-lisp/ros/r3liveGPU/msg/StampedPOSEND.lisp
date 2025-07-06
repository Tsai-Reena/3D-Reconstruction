; Auto-generated. Do not edit!


(cl:in-package r3liveGPU-msg)


;//! \htmlinclude StampedPOSEND.msg.html

(cl:defclass <StampedPOSEND> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pos_end
    :reader pos_end
    :initarg :pos_end
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass StampedPOSEND (<StampedPOSEND>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StampedPOSEND>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StampedPOSEND)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name r3liveGPU-msg:<StampedPOSEND> is deprecated: use r3liveGPU-msg:StampedPOSEND instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <StampedPOSEND>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader r3liveGPU-msg:header-val is deprecated.  Use r3liveGPU-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pos_end-val :lambda-list '(m))
(cl:defmethod pos_end-val ((m <StampedPOSEND>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader r3liveGPU-msg:pos_end-val is deprecated.  Use r3liveGPU-msg:pos_end instead.")
  (pos_end m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StampedPOSEND>) ostream)
  "Serializes a message object of type '<StampedPOSEND>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos_end) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StampedPOSEND>) istream)
  "Deserializes a message object of type '<StampedPOSEND>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos_end) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StampedPOSEND>)))
  "Returns string type for a message object of type '<StampedPOSEND>"
  "r3liveGPU/StampedPOSEND")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StampedPOSEND)))
  "Returns string type for a message object of type 'StampedPOSEND"
  "r3liveGPU/StampedPOSEND")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StampedPOSEND>)))
  "Returns md5sum for a message object of type '<StampedPOSEND>"
  "3973d5c119d824fdcb60b2abfa99d0bc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StampedPOSEND)))
  "Returns md5sum for a message object of type 'StampedPOSEND"
  "3973d5c119d824fdcb60b2abfa99d0bc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StampedPOSEND>)))
  "Returns full string definition for message of type '<StampedPOSEND>"
  (cl:format cl:nil "# StampedPOSEND.msg~%~%std_msgs/Header header~%geometry_msgs/Point pos_end~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StampedPOSEND)))
  "Returns full string definition for message of type 'StampedPOSEND"
  (cl:format cl:nil "# StampedPOSEND.msg~%~%std_msgs/Header header~%geometry_msgs/Point pos_end~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StampedPOSEND>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos_end))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StampedPOSEND>))
  "Converts a ROS message object to a list"
  (cl:list 'StampedPOSEND
    (cl:cons ':header (header msg))
    (cl:cons ':pos_end (pos_end msg))
))
