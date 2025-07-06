
(cl:in-package :asdf)

(defsystem "r3liveGPU-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Int32_PointCloud" :depends-on ("_package_Int32_PointCloud"))
    (:file "_package_Int32_PointCloud" :depends-on ("_package"))
    (:file "Int32_PointCloud2" :depends-on ("_package_Int32_PointCloud2"))
    (:file "_package_Int32_PointCloud2" :depends-on ("_package"))
    (:file "StampedEulerCur" :depends-on ("_package_StampedEulerCur"))
    (:file "_package_StampedEulerCur" :depends-on ("_package"))
    (:file "StampedFloat64MultiArray" :depends-on ("_package_StampedFloat64MultiArray"))
    (:file "_package_StampedFloat64MultiArray" :depends-on ("_package"))
    (:file "StampedInt32" :depends-on ("_package_StampedInt32"))
    (:file "_package_StampedInt32" :depends-on ("_package"))
    (:file "StampedPOSEND" :depends-on ("_package_StampedPOSEND"))
    (:file "_package_StampedPOSEND" :depends-on ("_package"))
    (:file "StampedQuaternion" :depends-on ("_package_StampedQuaternion"))
    (:file "_package_StampedQuaternion" :depends-on ("_package"))
    (:file "State" :depends-on ("_package_State"))
    (:file "_package_State" :depends-on ("_package"))
  ))