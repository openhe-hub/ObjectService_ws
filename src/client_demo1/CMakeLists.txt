cmake_minimum_required(VERSION 3.0.2)
project(client_demo1)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  std_srvs
  object_service
)

catkin_package(
)

include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

add_executable(${PROJECT_NAME} src/client1.cpp)
target_link_libraries(${PROJECT_NAME} ${catkin_LIBRARIES})

