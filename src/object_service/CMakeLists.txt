cmake_minimum_required(VERSION 3.0.2)
project(object_service)

set(CXX_STANDARD 17)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  std_srvs
  sensor_msgs
  message_generation
)

## Generate services in the 'srv' folder
add_service_files(
  FILES
  Test.srv
  Demo.srv
)

# Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES
  std_msgs
  sensor_msgs
)

catkin_package()

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

add_executable(${PROJECT_NAME} src/server.cpp src/value.hpp src/defs.h)
target_link_libraries(${PROJECT_NAME} ${catkin_LIBRARIES})
