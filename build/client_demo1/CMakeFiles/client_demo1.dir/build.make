# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sjtu/code/robomaster/ObjectService_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sjtu/code/robomaster/ObjectService_ws/build

# Include any dependencies generated for this target.
include client_demo1/CMakeFiles/client_demo1.dir/depend.make

# Include the progress variables for this target.
include client_demo1/CMakeFiles/client_demo1.dir/progress.make

# Include the compile flags for this target's objects.
include client_demo1/CMakeFiles/client_demo1.dir/flags.make

client_demo1/CMakeFiles/client_demo1.dir/src/client1.cpp.o: client_demo1/CMakeFiles/client_demo1.dir/flags.make
client_demo1/CMakeFiles/client_demo1.dir/src/client1.cpp.o: /home/sjtu/code/robomaster/ObjectService_ws/src/client_demo1/src/client1.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sjtu/code/robomaster/ObjectService_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object client_demo1/CMakeFiles/client_demo1.dir/src/client1.cpp.o"
	cd /home/sjtu/code/robomaster/ObjectService_ws/build/client_demo1 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client_demo1.dir/src/client1.cpp.o -c /home/sjtu/code/robomaster/ObjectService_ws/src/client_demo1/src/client1.cpp

client_demo1/CMakeFiles/client_demo1.dir/src/client1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client_demo1.dir/src/client1.cpp.i"
	cd /home/sjtu/code/robomaster/ObjectService_ws/build/client_demo1 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sjtu/code/robomaster/ObjectService_ws/src/client_demo1/src/client1.cpp > CMakeFiles/client_demo1.dir/src/client1.cpp.i

client_demo1/CMakeFiles/client_demo1.dir/src/client1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client_demo1.dir/src/client1.cpp.s"
	cd /home/sjtu/code/robomaster/ObjectService_ws/build/client_demo1 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sjtu/code/robomaster/ObjectService_ws/src/client_demo1/src/client1.cpp -o CMakeFiles/client_demo1.dir/src/client1.cpp.s

# Object files for target client_demo1
client_demo1_OBJECTS = \
"CMakeFiles/client_demo1.dir/src/client1.cpp.o"

# External object files for target client_demo1
client_demo1_EXTERNAL_OBJECTS =

/home/sjtu/code/robomaster/ObjectService_ws/devel/lib/client_demo1/client_demo1: client_demo1/CMakeFiles/client_demo1.dir/src/client1.cpp.o
/home/sjtu/code/robomaster/ObjectService_ws/devel/lib/client_demo1/client_demo1: client_demo1/CMakeFiles/client_demo1.dir/build.make
/home/sjtu/code/robomaster/ObjectService_ws/devel/lib/client_demo1/client_demo1: /opt/ros/noetic/lib/libroscpp.so
/home/sjtu/code/robomaster/ObjectService_ws/devel/lib/client_demo1/client_demo1: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/sjtu/code/robomaster/ObjectService_ws/devel/lib/client_demo1/client_demo1: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/sjtu/code/robomaster/ObjectService_ws/devel/lib/client_demo1/client_demo1: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/sjtu/code/robomaster/ObjectService_ws/devel/lib/client_demo1/client_demo1: /opt/ros/noetic/lib/librosconsole.so
/home/sjtu/code/robomaster/ObjectService_ws/devel/lib/client_demo1/client_demo1: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/sjtu/code/robomaster/ObjectService_ws/devel/lib/client_demo1/client_demo1: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/sjtu/code/robomaster/ObjectService_ws/devel/lib/client_demo1/client_demo1: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/sjtu/code/robomaster/ObjectService_ws/devel/lib/client_demo1/client_demo1: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/sjtu/code/robomaster/ObjectService_ws/devel/lib/client_demo1/client_demo1: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/sjtu/code/robomaster/ObjectService_ws/devel/lib/client_demo1/client_demo1: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/sjtu/code/robomaster/ObjectService_ws/devel/lib/client_demo1/client_demo1: /opt/ros/noetic/lib/librostime.so
/home/sjtu/code/robomaster/ObjectService_ws/devel/lib/client_demo1/client_demo1: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/sjtu/code/robomaster/ObjectService_ws/devel/lib/client_demo1/client_demo1: /opt/ros/noetic/lib/libcpp_common.so
/home/sjtu/code/robomaster/ObjectService_ws/devel/lib/client_demo1/client_demo1: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/sjtu/code/robomaster/ObjectService_ws/devel/lib/client_demo1/client_demo1: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/sjtu/code/robomaster/ObjectService_ws/devel/lib/client_demo1/client_demo1: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/sjtu/code/robomaster/ObjectService_ws/devel/lib/client_demo1/client_demo1: client_demo1/CMakeFiles/client_demo1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sjtu/code/robomaster/ObjectService_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/sjtu/code/robomaster/ObjectService_ws/devel/lib/client_demo1/client_demo1"
	cd /home/sjtu/code/robomaster/ObjectService_ws/build/client_demo1 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/client_demo1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
client_demo1/CMakeFiles/client_demo1.dir/build: /home/sjtu/code/robomaster/ObjectService_ws/devel/lib/client_demo1/client_demo1

.PHONY : client_demo1/CMakeFiles/client_demo1.dir/build

client_demo1/CMakeFiles/client_demo1.dir/clean:
	cd /home/sjtu/code/robomaster/ObjectService_ws/build/client_demo1 && $(CMAKE_COMMAND) -P CMakeFiles/client_demo1.dir/cmake_clean.cmake
.PHONY : client_demo1/CMakeFiles/client_demo1.dir/clean

client_demo1/CMakeFiles/client_demo1.dir/depend:
	cd /home/sjtu/code/robomaster/ObjectService_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sjtu/code/robomaster/ObjectService_ws/src /home/sjtu/code/robomaster/ObjectService_ws/src/client_demo1 /home/sjtu/code/robomaster/ObjectService_ws/build /home/sjtu/code/robomaster/ObjectService_ws/build/client_demo1 /home/sjtu/code/robomaster/ObjectService_ws/build/client_demo1/CMakeFiles/client_demo1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : client_demo1/CMakeFiles/client_demo1.dir/depend

