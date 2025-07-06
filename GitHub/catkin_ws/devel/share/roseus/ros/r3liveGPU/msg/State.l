;; Auto-generated. Do not edit!


(when (boundp 'r3liveGPU::State)
  (if (not (find-package "R3LIVEGPU"))
    (make-package "R3LIVEGPU"))
  (shadow 'State (find-package "R3LIVEGPU")))
(unless (find-package "R3LIVEGPU::STATE")
  (make-package "R3LIVEGPU::STATE"))

(in-package "ROS")
;;//! \htmlinclude State.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass r3liveGPU::State
  :super ros::object
  :slots (_header _rot_end _pos_end _vel_end _bias_g _bias_a _gravity _rot_ext_i2c _pos_ext_i2c _cam_intrinsic _cov _td_ext_i2c_delta ))

(defmethod r3liveGPU::State
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:rot_end __rot_end) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:pos_end __pos_end) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:vel_end __vel_end) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:bias_g __bias_g) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:bias_a __bias_a) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:gravity __gravity) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:rot_ext_i2c __rot_ext_i2c) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:pos_ext_i2c __pos_ext_i2c) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:cam_intrinsic __cam_intrinsic) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:cov __cov) (make-array 841 :initial-element 0.0 :element-type :float))
    ((:td_ext_i2c_delta __td_ext_i2c_delta) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _rot_end __rot_end)
   (setq _pos_end __pos_end)
   (setq _vel_end __vel_end)
   (setq _bias_g __bias_g)
   (setq _bias_a __bias_a)
   (setq _gravity __gravity)
   (setq _rot_ext_i2c __rot_ext_i2c)
   (setq _pos_ext_i2c __pos_ext_i2c)
   (setq _cam_intrinsic __cam_intrinsic)
   (setq _cov __cov)
   (setq _td_ext_i2c_delta (float __td_ext_i2c_delta))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:rot_end
   (&optional __rot_end)
   (if __rot_end (setq _rot_end __rot_end)) _rot_end)
  (:pos_end
   (&optional __pos_end)
   (if __pos_end (setq _pos_end __pos_end)) _pos_end)
  (:vel_end
   (&optional __vel_end)
   (if __vel_end (setq _vel_end __vel_end)) _vel_end)
  (:bias_g
   (&optional __bias_g)
   (if __bias_g (setq _bias_g __bias_g)) _bias_g)
  (:bias_a
   (&optional __bias_a)
   (if __bias_a (setq _bias_a __bias_a)) _bias_a)
  (:gravity
   (&optional __gravity)
   (if __gravity (setq _gravity __gravity)) _gravity)
  (:rot_ext_i2c
   (&optional __rot_ext_i2c)
   (if __rot_ext_i2c (setq _rot_ext_i2c __rot_ext_i2c)) _rot_ext_i2c)
  (:pos_ext_i2c
   (&optional __pos_ext_i2c)
   (if __pos_ext_i2c (setq _pos_ext_i2c __pos_ext_i2c)) _pos_ext_i2c)
  (:cam_intrinsic
   (&optional __cam_intrinsic)
   (if __cam_intrinsic (setq _cam_intrinsic __cam_intrinsic)) _cam_intrinsic)
  (:cov
   (&optional __cov)
   (if __cov (setq _cov __cov)) _cov)
  (:td_ext_i2c_delta
   (&optional __td_ext_i2c_delta)
   (if __td_ext_i2c_delta (setq _td_ext_i2c_delta __td_ext_i2c_delta)) _td_ext_i2c_delta)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[9] _rot_end
    (* 8    9)
    ;; float64[3] _pos_end
    (* 8    3)
    ;; float64[3] _vel_end
    (* 8    3)
    ;; float64[3] _bias_g
    (* 8    3)
    ;; float64[3] _bias_a
    (* 8    3)
    ;; float64[3] _gravity
    (* 8    3)
    ;; float64[9] _rot_ext_i2c
    (* 8    9)
    ;; float64[3] _pos_ext_i2c
    (* 8    3)
    ;; float64[4] _cam_intrinsic
    (* 8    4)
    ;; float64[841] _cov
    (* 8    841)
    ;; float64 _td_ext_i2c_delta
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[9] _rot_end
     (dotimes (i 9)
       (sys::poke (elt _rot_end i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _pos_end
     (dotimes (i 3)
       (sys::poke (elt _pos_end i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _vel_end
     (dotimes (i 3)
       (sys::poke (elt _vel_end i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _bias_g
     (dotimes (i 3)
       (sys::poke (elt _bias_g i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _bias_a
     (dotimes (i 3)
       (sys::poke (elt _bias_a i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _gravity
     (dotimes (i 3)
       (sys::poke (elt _gravity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[9] _rot_ext_i2c
     (dotimes (i 9)
       (sys::poke (elt _rot_ext_i2c i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _pos_ext_i2c
     (dotimes (i 3)
       (sys::poke (elt _pos_ext_i2c i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[4] _cam_intrinsic
     (dotimes (i 4)
       (sys::poke (elt _cam_intrinsic i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[841] _cov
     (dotimes (i 841)
       (sys::poke (elt _cov i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _td_ext_i2c_delta
       (sys::poke _td_ext_i2c_delta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[9] _rot_end
   (dotimes (i (length _rot_end))
     (setf (elt _rot_end i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _pos_end
   (dotimes (i (length _pos_end))
     (setf (elt _pos_end i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _vel_end
   (dotimes (i (length _vel_end))
     (setf (elt _vel_end i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _bias_g
   (dotimes (i (length _bias_g))
     (setf (elt _bias_g i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _bias_a
   (dotimes (i (length _bias_a))
     (setf (elt _bias_a i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _gravity
   (dotimes (i (length _gravity))
     (setf (elt _gravity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[9] _rot_ext_i2c
   (dotimes (i (length _rot_ext_i2c))
     (setf (elt _rot_ext_i2c i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _pos_ext_i2c
   (dotimes (i (length _pos_ext_i2c))
     (setf (elt _pos_ext_i2c i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[4] _cam_intrinsic
   (dotimes (i (length _cam_intrinsic))
     (setf (elt _cam_intrinsic i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[841] _cov
   (dotimes (i (length _cov))
     (setf (elt _cov i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64 _td_ext_i2c_delta
     (setq _td_ext_i2c_delta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get r3liveGPU::State :md5sum-) "e1348c3b12f099a76e76d6b155ce1633")
(setf (get r3liveGPU::State :datatype-) "r3liveGPU/State")
(setf (get r3liveGPU::State :definition-)
      "# State.msg
std_msgs/Header header       # ROS標頭
float64[9] rot_end           # Rotation matrix at the end lidar point
float64[3] pos_end           # Position at the end lidar point (world frame)
float64[3] vel_end           # Velocity at the end lidar point (world frame)
float64[3] bias_g            # Gyroscope bias
float64[3] bias_a            # Accelerator bias
float64[3] gravity           # Estimated gravity acceleration
float64[9] rot_ext_i2c       # Extrinsic rotation between IMU frame to Camera frame
float64[3] pos_ext_i2c       # Extrinsic position between IMU frame to Camera frame
float64[4] cam_intrinsic     # Camera intrinsic parameters [fx, fy, cx, cy]
float64[841] cov             # States covariance matrix
float64 td_ext_i2c_delta     # Extrinsic time delta between IMU frame to Camera frame

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

")



(provide :r3liveGPU/State "e1348c3b12f099a76e76d6b155ce1633")


