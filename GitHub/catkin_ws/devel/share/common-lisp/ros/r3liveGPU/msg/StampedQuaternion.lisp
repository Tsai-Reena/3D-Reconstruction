; Auto-generated. Do not edit!


(cl:in-package r3liveGPU-msg)


;//! \htmlinclude StampedQuaternion.msg.html

(cl:defclass <StampedQuaternion> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (geoQuat
    :reader geoQuat
    :initarg :geoQuat
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion)))
)

(cl:defclass StampedQuaternion (<StampedQuaternion>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StampedQuaternion>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StampedQuaternion)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name r3liveGPU-msg:<StampedQuaternion> is deprecated: use r3liveGPU-msg:StampedQuaternion instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <StampedQuaternion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader r3liveGPU-msg:header-val is deprecated.  Use r3liveGPU-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'geoQuat-val :lambda-list '(m))
(cl:defmethod geoQuat-val ((m <StampedQuaternion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader r3liveGPU-msg:geoQuat-val is deprecated.  Use r3liveGPU-msg:geoQuat instead.")
  (geoQuat m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StampedQuaternion>) ostream)
  "Serializes a message object of type '<StampedQuaternion>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'geoQuat) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StampedQuaternion>) istream)
  "Deserializes a message object of type '<StampedQuaternion>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'geoQuat) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StampedQuaternion>)))
  "Returns string type for a message object of type '<StampedQuaternion>"
  "r3liveGPU/StampedQuaternion")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StampedQuaternion)))
  "Returns string type for a message object of type 'StampedQuaternion"
  "r3liveGPU/StampedQuaternion")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StampedQuaternion>)))
  "Returns md5sum for a message object of type '<StampedQuaternion>"
  "90a2df2d0b1ff055b3959b6ad0eb308e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StampedQuaternion)))
  "Returns md5sum for a message object of type 'StampedQuaternion"
  "90a2df2d0b1ff055b3959b6ad0eb308e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StampedQuaternion>)))
  "Returns full string definition for message of type '<StampedQuaternion>"
  (cl:format cl:nil "# StampedQuaternion.msg~%~%std_msgs/Header header~%geometry_msgs/Quaternion geoQuat~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StampedQuaternion)))
  "Returns full string definition for message of type 'StampedQuaternion"
  (cl:format cl:nil "# StampedQuaternion.msg~%~%std_msgs/Header header~%geometry_msgs/Quaternion geoQuat~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StampedQuaternion>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'geoQuat))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StampedQuaternion>))
  "Converts a ROS message object to a list"
  (cl:list 'StampedQuaternion
    (cl:cons ':header (header msg))
    (cl:cons ':geoQuat (geoQuat msg))
))
