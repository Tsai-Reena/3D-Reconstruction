; Auto-generated. Do not edit!


(cl:in-package r3liveGPU-msg)


;//! \htmlinclude StampedEulerCur.msg.html

(cl:defclass <StampedEulerCur> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (euler_cur
    :reader euler_cur
    :initarg :euler_cur
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass StampedEulerCur (<StampedEulerCur>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StampedEulerCur>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StampedEulerCur)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name r3liveGPU-msg:<StampedEulerCur> is deprecated: use r3liveGPU-msg:StampedEulerCur instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <StampedEulerCur>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader r3liveGPU-msg:header-val is deprecated.  Use r3liveGPU-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'euler_cur-val :lambda-list '(m))
(cl:defmethod euler_cur-val ((m <StampedEulerCur>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader r3liveGPU-msg:euler_cur-val is deprecated.  Use r3liveGPU-msg:euler_cur instead.")
  (euler_cur m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StampedEulerCur>) ostream)
  "Serializes a message object of type '<StampedEulerCur>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'euler_cur) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StampedEulerCur>) istream)
  "Deserializes a message object of type '<StampedEulerCur>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'euler_cur) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StampedEulerCur>)))
  "Returns string type for a message object of type '<StampedEulerCur>"
  "r3liveGPU/StampedEulerCur")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StampedEulerCur)))
  "Returns string type for a message object of type 'StampedEulerCur"
  "r3liveGPU/StampedEulerCur")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StampedEulerCur>)))
  "Returns md5sum for a message object of type '<StampedEulerCur>"
  "0192c2a77e104beded3cf510e007f9c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StampedEulerCur)))
  "Returns md5sum for a message object of type 'StampedEulerCur"
  "0192c2a77e104beded3cf510e007f9c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StampedEulerCur>)))
  "Returns full string definition for message of type '<StampedEulerCur>"
  (cl:format cl:nil "# StampedEulerCur.msg~%~%std_msgs/Header header~%geometry_msgs/Vector3 euler_cur~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StampedEulerCur)))
  "Returns full string definition for message of type 'StampedEulerCur"
  (cl:format cl:nil "# StampedEulerCur.msg~%~%std_msgs/Header header~%geometry_msgs/Vector3 euler_cur~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StampedEulerCur>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'euler_cur))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StampedEulerCur>))
  "Converts a ROS message object to a list"
  (cl:list 'StampedEulerCur
    (cl:cons ':header (header msg))
    (cl:cons ':euler_cur (euler_cur msg))
))
