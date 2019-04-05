# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "temoto2_rosmsg_to_json: 1 messages, 0 services")

set(MSG_I_FLAGS "-Itemoto2_rosmsg_to_json:/home/selmawanna/temoto2_json/src/temoto2_rosmsg_to_json/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(temoto2_rosmsg_to_json_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/selmawanna/temoto2_json/src/temoto2_rosmsg_to_json/msg/semantic_frame.msg" NAME_WE)
add_custom_target(_temoto2_rosmsg_to_json_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "temoto2_rosmsg_to_json" "/home/selmawanna/temoto2_json/src/temoto2_rosmsg_to_json/msg/semantic_frame.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(temoto2_rosmsg_to_json
  "/home/selmawanna/temoto2_json/src/temoto2_rosmsg_to_json/msg/semantic_frame.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/temoto2_rosmsg_to_json
)

### Generating Services

### Generating Module File
_generate_module_cpp(temoto2_rosmsg_to_json
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/temoto2_rosmsg_to_json
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(temoto2_rosmsg_to_json_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(temoto2_rosmsg_to_json_generate_messages temoto2_rosmsg_to_json_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/selmawanna/temoto2_json/src/temoto2_rosmsg_to_json/msg/semantic_frame.msg" NAME_WE)
add_dependencies(temoto2_rosmsg_to_json_generate_messages_cpp _temoto2_rosmsg_to_json_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(temoto2_rosmsg_to_json_gencpp)
add_dependencies(temoto2_rosmsg_to_json_gencpp temoto2_rosmsg_to_json_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS temoto2_rosmsg_to_json_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(temoto2_rosmsg_to_json
  "/home/selmawanna/temoto2_json/src/temoto2_rosmsg_to_json/msg/semantic_frame.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/temoto2_rosmsg_to_json
)

### Generating Services

### Generating Module File
_generate_module_eus(temoto2_rosmsg_to_json
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/temoto2_rosmsg_to_json
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(temoto2_rosmsg_to_json_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(temoto2_rosmsg_to_json_generate_messages temoto2_rosmsg_to_json_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/selmawanna/temoto2_json/src/temoto2_rosmsg_to_json/msg/semantic_frame.msg" NAME_WE)
add_dependencies(temoto2_rosmsg_to_json_generate_messages_eus _temoto2_rosmsg_to_json_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(temoto2_rosmsg_to_json_geneus)
add_dependencies(temoto2_rosmsg_to_json_geneus temoto2_rosmsg_to_json_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS temoto2_rosmsg_to_json_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(temoto2_rosmsg_to_json
  "/home/selmawanna/temoto2_json/src/temoto2_rosmsg_to_json/msg/semantic_frame.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/temoto2_rosmsg_to_json
)

### Generating Services

### Generating Module File
_generate_module_lisp(temoto2_rosmsg_to_json
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/temoto2_rosmsg_to_json
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(temoto2_rosmsg_to_json_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(temoto2_rosmsg_to_json_generate_messages temoto2_rosmsg_to_json_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/selmawanna/temoto2_json/src/temoto2_rosmsg_to_json/msg/semantic_frame.msg" NAME_WE)
add_dependencies(temoto2_rosmsg_to_json_generate_messages_lisp _temoto2_rosmsg_to_json_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(temoto2_rosmsg_to_json_genlisp)
add_dependencies(temoto2_rosmsg_to_json_genlisp temoto2_rosmsg_to_json_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS temoto2_rosmsg_to_json_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(temoto2_rosmsg_to_json
  "/home/selmawanna/temoto2_json/src/temoto2_rosmsg_to_json/msg/semantic_frame.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/temoto2_rosmsg_to_json
)

### Generating Services

### Generating Module File
_generate_module_nodejs(temoto2_rosmsg_to_json
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/temoto2_rosmsg_to_json
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(temoto2_rosmsg_to_json_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(temoto2_rosmsg_to_json_generate_messages temoto2_rosmsg_to_json_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/selmawanna/temoto2_json/src/temoto2_rosmsg_to_json/msg/semantic_frame.msg" NAME_WE)
add_dependencies(temoto2_rosmsg_to_json_generate_messages_nodejs _temoto2_rosmsg_to_json_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(temoto2_rosmsg_to_json_gennodejs)
add_dependencies(temoto2_rosmsg_to_json_gennodejs temoto2_rosmsg_to_json_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS temoto2_rosmsg_to_json_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(temoto2_rosmsg_to_json
  "/home/selmawanna/temoto2_json/src/temoto2_rosmsg_to_json/msg/semantic_frame.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/temoto2_rosmsg_to_json
)

### Generating Services

### Generating Module File
_generate_module_py(temoto2_rosmsg_to_json
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/temoto2_rosmsg_to_json
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(temoto2_rosmsg_to_json_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(temoto2_rosmsg_to_json_generate_messages temoto2_rosmsg_to_json_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/selmawanna/temoto2_json/src/temoto2_rosmsg_to_json/msg/semantic_frame.msg" NAME_WE)
add_dependencies(temoto2_rosmsg_to_json_generate_messages_py _temoto2_rosmsg_to_json_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(temoto2_rosmsg_to_json_genpy)
add_dependencies(temoto2_rosmsg_to_json_genpy temoto2_rosmsg_to_json_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS temoto2_rosmsg_to_json_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/temoto2_rosmsg_to_json)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/temoto2_rosmsg_to_json
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(temoto2_rosmsg_to_json_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/temoto2_rosmsg_to_json)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/temoto2_rosmsg_to_json
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(temoto2_rosmsg_to_json_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/temoto2_rosmsg_to_json)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/temoto2_rosmsg_to_json
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(temoto2_rosmsg_to_json_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/temoto2_rosmsg_to_json)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/temoto2_rosmsg_to_json
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(temoto2_rosmsg_to_json_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/temoto2_rosmsg_to_json)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/temoto2_rosmsg_to_json\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/temoto2_rosmsg_to_json
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(temoto2_rosmsg_to_json_generate_messages_py std_msgs_generate_messages_py)
endif()
