# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robtrj: 1 messages, 1 services")

set(MSG_I_FLAGS "-Irobtrj:/home/rohitd/rosqstp/week2/src/robtrj/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robtrj_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/rohitd/rosqstp/week2/src/robtrj/msg/var.msg" NAME_WE)
add_custom_target(_robtrj_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robtrj" "/home/rohitd/rosqstp/week2/src/robtrj/msg/var.msg" ""
)

get_filename_component(_filename "/home/rohitd/rosqstp/week2/src/robtrj/srv/msgvar.srv" NAME_WE)
add_custom_target(_robtrj_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robtrj" "/home/rohitd/rosqstp/week2/src/robtrj/srv/msgvar.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robtrj
  "/home/rohitd/rosqstp/week2/src/robtrj/msg/var.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robtrj
)

### Generating Services
_generate_srv_cpp(robtrj
  "/home/rohitd/rosqstp/week2/src/robtrj/srv/msgvar.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robtrj
)

### Generating Module File
_generate_module_cpp(robtrj
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robtrj
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robtrj_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robtrj_generate_messages robtrj_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rohitd/rosqstp/week2/src/robtrj/msg/var.msg" NAME_WE)
add_dependencies(robtrj_generate_messages_cpp _robtrj_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rohitd/rosqstp/week2/src/robtrj/srv/msgvar.srv" NAME_WE)
add_dependencies(robtrj_generate_messages_cpp _robtrj_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robtrj_gencpp)
add_dependencies(robtrj_gencpp robtrj_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robtrj_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(robtrj
  "/home/rohitd/rosqstp/week2/src/robtrj/msg/var.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robtrj
)

### Generating Services
_generate_srv_eus(robtrj
  "/home/rohitd/rosqstp/week2/src/robtrj/srv/msgvar.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robtrj
)

### Generating Module File
_generate_module_eus(robtrj
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robtrj
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robtrj_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robtrj_generate_messages robtrj_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rohitd/rosqstp/week2/src/robtrj/msg/var.msg" NAME_WE)
add_dependencies(robtrj_generate_messages_eus _robtrj_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rohitd/rosqstp/week2/src/robtrj/srv/msgvar.srv" NAME_WE)
add_dependencies(robtrj_generate_messages_eus _robtrj_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robtrj_geneus)
add_dependencies(robtrj_geneus robtrj_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robtrj_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robtrj
  "/home/rohitd/rosqstp/week2/src/robtrj/msg/var.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robtrj
)

### Generating Services
_generate_srv_lisp(robtrj
  "/home/rohitd/rosqstp/week2/src/robtrj/srv/msgvar.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robtrj
)

### Generating Module File
_generate_module_lisp(robtrj
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robtrj
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robtrj_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robtrj_generate_messages robtrj_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rohitd/rosqstp/week2/src/robtrj/msg/var.msg" NAME_WE)
add_dependencies(robtrj_generate_messages_lisp _robtrj_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rohitd/rosqstp/week2/src/robtrj/srv/msgvar.srv" NAME_WE)
add_dependencies(robtrj_generate_messages_lisp _robtrj_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robtrj_genlisp)
add_dependencies(robtrj_genlisp robtrj_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robtrj_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(robtrj
  "/home/rohitd/rosqstp/week2/src/robtrj/msg/var.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robtrj
)

### Generating Services
_generate_srv_nodejs(robtrj
  "/home/rohitd/rosqstp/week2/src/robtrj/srv/msgvar.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robtrj
)

### Generating Module File
_generate_module_nodejs(robtrj
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robtrj
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robtrj_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robtrj_generate_messages robtrj_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rohitd/rosqstp/week2/src/robtrj/msg/var.msg" NAME_WE)
add_dependencies(robtrj_generate_messages_nodejs _robtrj_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rohitd/rosqstp/week2/src/robtrj/srv/msgvar.srv" NAME_WE)
add_dependencies(robtrj_generate_messages_nodejs _robtrj_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robtrj_gennodejs)
add_dependencies(robtrj_gennodejs robtrj_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robtrj_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robtrj
  "/home/rohitd/rosqstp/week2/src/robtrj/msg/var.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robtrj
)

### Generating Services
_generate_srv_py(robtrj
  "/home/rohitd/rosqstp/week2/src/robtrj/srv/msgvar.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robtrj
)

### Generating Module File
_generate_module_py(robtrj
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robtrj
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robtrj_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robtrj_generate_messages robtrj_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rohitd/rosqstp/week2/src/robtrj/msg/var.msg" NAME_WE)
add_dependencies(robtrj_generate_messages_py _robtrj_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rohitd/rosqstp/week2/src/robtrj/srv/msgvar.srv" NAME_WE)
add_dependencies(robtrj_generate_messages_py _robtrj_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robtrj_genpy)
add_dependencies(robtrj_genpy robtrj_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robtrj_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robtrj)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robtrj
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(robtrj_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robtrj)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robtrj
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(robtrj_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robtrj)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robtrj
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(robtrj_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robtrj)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robtrj
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(robtrj_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robtrj)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robtrj\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robtrj
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(robtrj_generate_messages_py std_msgs_generate_messages_py)
endif()
