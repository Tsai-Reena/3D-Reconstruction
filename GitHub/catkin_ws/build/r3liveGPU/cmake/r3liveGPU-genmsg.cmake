# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "r3liveGPU: 8 messages, 0 services")

set(MSG_I_FLAGS "-Ir3liveGPU:/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(r3liveGPU_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/State.msg" NAME_WE)
add_custom_target(_r3liveGPU_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "r3liveGPU" "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/State.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedInt32.msg" NAME_WE)
add_custom_target(_r3liveGPU_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "r3liveGPU" "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedInt32.msg" "std_msgs/Int32:std_msgs/Header"
)

get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/Int32_PointCloud.msg" NAME_WE)
add_custom_target(_r3liveGPU_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "r3liveGPU" "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/Int32_PointCloud.msg" "std_msgs/Int32:sensor_msgs/PointField:r3liveGPU/StampedInt32:std_msgs/Header:sensor_msgs/PointCloud2"
)

get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/Int32_PointCloud2.msg" NAME_WE)
add_custom_target(_r3liveGPU_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "r3liveGPU" "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/Int32_PointCloud2.msg" "std_msgs/Int32:sensor_msgs/PointField:r3liveGPU/StampedInt32:std_msgs/Header:sensor_msgs/PointCloud2"
)

get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedQuaternion.msg" NAME_WE)
add_custom_target(_r3liveGPU_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "r3liveGPU" "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedQuaternion.msg" "geometry_msgs/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedPOSEND.msg" NAME_WE)
add_custom_target(_r3liveGPU_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "r3liveGPU" "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedPOSEND.msg" "geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedEulerCur.msg" NAME_WE)
add_custom_target(_r3liveGPU_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "r3liveGPU" "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedEulerCur.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedFloat64MultiArray.msg" NAME_WE)
add_custom_target(_r3liveGPU_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "r3liveGPU" "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedFloat64MultiArray.msg" "std_msgs/MultiArrayDimension:std_msgs/Float64MultiArray:std_msgs/Header:std_msgs/MultiArrayLayout"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/State.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/r3liveGPU
)
_generate_msg_cpp(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedInt32.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/r3liveGPU
)
_generate_msg_cpp(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/Int32_PointCloud.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedInt32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/r3liveGPU
)
_generate_msg_cpp(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/Int32_PointCloud2.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedInt32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/r3liveGPU
)
_generate_msg_cpp(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedQuaternion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/r3liveGPU
)
_generate_msg_cpp(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedPOSEND.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/r3liveGPU
)
_generate_msg_cpp(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedEulerCur.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/r3liveGPU
)
_generate_msg_cpp(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedFloat64MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/r3liveGPU
)

### Generating Services

### Generating Module File
_generate_module_cpp(r3liveGPU
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/r3liveGPU
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(r3liveGPU_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(r3liveGPU_generate_messages r3liveGPU_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/State.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_cpp _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedInt32.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_cpp _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/Int32_PointCloud.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_cpp _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/Int32_PointCloud2.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_cpp _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedQuaternion.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_cpp _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedPOSEND.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_cpp _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedEulerCur.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_cpp _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedFloat64MultiArray.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_cpp _r3liveGPU_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(r3liveGPU_gencpp)
add_dependencies(r3liveGPU_gencpp r3liveGPU_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS r3liveGPU_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/State.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/r3liveGPU
)
_generate_msg_eus(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedInt32.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/r3liveGPU
)
_generate_msg_eus(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/Int32_PointCloud.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedInt32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/r3liveGPU
)
_generate_msg_eus(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/Int32_PointCloud2.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedInt32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/r3liveGPU
)
_generate_msg_eus(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedQuaternion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/r3liveGPU
)
_generate_msg_eus(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedPOSEND.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/r3liveGPU
)
_generate_msg_eus(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedEulerCur.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/r3liveGPU
)
_generate_msg_eus(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedFloat64MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/r3liveGPU
)

### Generating Services

### Generating Module File
_generate_module_eus(r3liveGPU
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/r3liveGPU
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(r3liveGPU_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(r3liveGPU_generate_messages r3liveGPU_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/State.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_eus _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedInt32.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_eus _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/Int32_PointCloud.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_eus _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/Int32_PointCloud2.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_eus _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedQuaternion.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_eus _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedPOSEND.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_eus _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedEulerCur.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_eus _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedFloat64MultiArray.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_eus _r3liveGPU_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(r3liveGPU_geneus)
add_dependencies(r3liveGPU_geneus r3liveGPU_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS r3liveGPU_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/State.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/r3liveGPU
)
_generate_msg_lisp(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedInt32.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/r3liveGPU
)
_generate_msg_lisp(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/Int32_PointCloud.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedInt32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/r3liveGPU
)
_generate_msg_lisp(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/Int32_PointCloud2.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedInt32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/r3liveGPU
)
_generate_msg_lisp(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedQuaternion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/r3liveGPU
)
_generate_msg_lisp(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedPOSEND.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/r3liveGPU
)
_generate_msg_lisp(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedEulerCur.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/r3liveGPU
)
_generate_msg_lisp(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedFloat64MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/r3liveGPU
)

### Generating Services

### Generating Module File
_generate_module_lisp(r3liveGPU
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/r3liveGPU
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(r3liveGPU_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(r3liveGPU_generate_messages r3liveGPU_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/State.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_lisp _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedInt32.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_lisp _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/Int32_PointCloud.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_lisp _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/Int32_PointCloud2.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_lisp _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedQuaternion.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_lisp _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedPOSEND.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_lisp _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedEulerCur.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_lisp _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedFloat64MultiArray.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_lisp _r3liveGPU_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(r3liveGPU_genlisp)
add_dependencies(r3liveGPU_genlisp r3liveGPU_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS r3liveGPU_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/State.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/r3liveGPU
)
_generate_msg_nodejs(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedInt32.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/r3liveGPU
)
_generate_msg_nodejs(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/Int32_PointCloud.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedInt32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/r3liveGPU
)
_generate_msg_nodejs(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/Int32_PointCloud2.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedInt32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/r3liveGPU
)
_generate_msg_nodejs(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedQuaternion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/r3liveGPU
)
_generate_msg_nodejs(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedPOSEND.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/r3liveGPU
)
_generate_msg_nodejs(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedEulerCur.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/r3liveGPU
)
_generate_msg_nodejs(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedFloat64MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/r3liveGPU
)

### Generating Services

### Generating Module File
_generate_module_nodejs(r3liveGPU
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/r3liveGPU
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(r3liveGPU_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(r3liveGPU_generate_messages r3liveGPU_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/State.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_nodejs _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedInt32.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_nodejs _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/Int32_PointCloud.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_nodejs _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/Int32_PointCloud2.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_nodejs _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedQuaternion.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_nodejs _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedPOSEND.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_nodejs _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedEulerCur.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_nodejs _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedFloat64MultiArray.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_nodejs _r3liveGPU_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(r3liveGPU_gennodejs)
add_dependencies(r3liveGPU_gennodejs r3liveGPU_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS r3liveGPU_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/State.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/r3liveGPU
)
_generate_msg_py(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedInt32.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/r3liveGPU
)
_generate_msg_py(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/Int32_PointCloud.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedInt32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/r3liveGPU
)
_generate_msg_py(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/Int32_PointCloud2.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedInt32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/r3liveGPU
)
_generate_msg_py(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedQuaternion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/r3liveGPU
)
_generate_msg_py(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedPOSEND.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/r3liveGPU
)
_generate_msg_py(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedEulerCur.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/r3liveGPU
)
_generate_msg_py(r3liveGPU
  "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedFloat64MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/r3liveGPU
)

### Generating Services

### Generating Module File
_generate_module_py(r3liveGPU
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/r3liveGPU
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(r3liveGPU_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(r3liveGPU_generate_messages r3liveGPU_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/State.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_py _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedInt32.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_py _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/Int32_PointCloud.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_py _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/Int32_PointCloud2.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_py _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedQuaternion.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_py _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedPOSEND.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_py _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedEulerCur.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_py _r3liveGPU_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/GitHub/catkin_ws/src/r3liveGPU/r3liveGPU/msg/StampedFloat64MultiArray.msg" NAME_WE)
add_dependencies(r3liveGPU_generate_messages_py _r3liveGPU_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(r3liveGPU_genpy)
add_dependencies(r3liveGPU_genpy r3liveGPU_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS r3liveGPU_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/r3liveGPU)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/r3liveGPU
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(r3liveGPU_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(r3liveGPU_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(r3liveGPU_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/r3liveGPU)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/r3liveGPU
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(r3liveGPU_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(r3liveGPU_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(r3liveGPU_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/r3liveGPU)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/r3liveGPU
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(r3liveGPU_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(r3liveGPU_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(r3liveGPU_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/r3liveGPU)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/r3liveGPU
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(r3liveGPU_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(r3liveGPU_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(r3liveGPU_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/r3liveGPU)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/r3liveGPU\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/r3liveGPU
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(r3liveGPU_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(r3liveGPU_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(r3liveGPU_generate_messages_py sensor_msgs_generate_messages_py)
endif()
