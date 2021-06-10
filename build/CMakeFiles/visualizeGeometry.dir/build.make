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
CMAKE_SOURCE_DIR = /home/tutk/zouma/learning/project/Eigen

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tutk/zouma/learning/project/Eigen/build

# Include any dependencies generated for this target.
include CMakeFiles/visualizeGeometry.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/visualizeGeometry.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/visualizeGeometry.dir/flags.make

CMakeFiles/visualizeGeometry.dir/src/visualizeGeometry.cpp.o: CMakeFiles/visualizeGeometry.dir/flags.make
CMakeFiles/visualizeGeometry.dir/src/visualizeGeometry.cpp.o: ../src/visualizeGeometry.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tutk/zouma/learning/project/Eigen/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/visualizeGeometry.dir/src/visualizeGeometry.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/visualizeGeometry.dir/src/visualizeGeometry.cpp.o -c /home/tutk/zouma/learning/project/Eigen/src/visualizeGeometry.cpp

CMakeFiles/visualizeGeometry.dir/src/visualizeGeometry.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/visualizeGeometry.dir/src/visualizeGeometry.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tutk/zouma/learning/project/Eigen/src/visualizeGeometry.cpp > CMakeFiles/visualizeGeometry.dir/src/visualizeGeometry.cpp.i

CMakeFiles/visualizeGeometry.dir/src/visualizeGeometry.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/visualizeGeometry.dir/src/visualizeGeometry.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tutk/zouma/learning/project/Eigen/src/visualizeGeometry.cpp -o CMakeFiles/visualizeGeometry.dir/src/visualizeGeometry.cpp.s

# Object files for target visualizeGeometry
visualizeGeometry_OBJECTS = \
"CMakeFiles/visualizeGeometry.dir/src/visualizeGeometry.cpp.o"

# External object files for target visualizeGeometry
visualizeGeometry_EXTERNAL_OBJECTS =

../bin/visualizeGeometry: CMakeFiles/visualizeGeometry.dir/src/visualizeGeometry.cpp.o
../bin/visualizeGeometry: CMakeFiles/visualizeGeometry.dir/build.make
../bin/visualizeGeometry: /usr/local/lib/libpangolin.so
../bin/visualizeGeometry: /usr/lib/x86_64-linux-gnu/libOpenGL.so
../bin/visualizeGeometry: /usr/lib/x86_64-linux-gnu/libGLX.so
../bin/visualizeGeometry: /usr/lib/x86_64-linux-gnu/libGLU.so
../bin/visualizeGeometry: /usr/lib/x86_64-linux-gnu/libGLEW.so
../bin/visualizeGeometry: /usr/lib/x86_64-linux-gnu/libEGL.so
../bin/visualizeGeometry: /usr/lib/x86_64-linux-gnu/libSM.so
../bin/visualizeGeometry: /usr/lib/x86_64-linux-gnu/libICE.so
../bin/visualizeGeometry: /usr/lib/x86_64-linux-gnu/libX11.so
../bin/visualizeGeometry: /usr/lib/x86_64-linux-gnu/libXext.so
../bin/visualizeGeometry: /usr/lib/x86_64-linux-gnu/libOpenGL.so
../bin/visualizeGeometry: /usr/lib/x86_64-linux-gnu/libGLX.so
../bin/visualizeGeometry: /usr/lib/x86_64-linux-gnu/libGLU.so
../bin/visualizeGeometry: /usr/lib/x86_64-linux-gnu/libGLEW.so
../bin/visualizeGeometry: /usr/lib/x86_64-linux-gnu/libEGL.so
../bin/visualizeGeometry: /usr/lib/x86_64-linux-gnu/libSM.so
../bin/visualizeGeometry: /usr/lib/x86_64-linux-gnu/libICE.so
../bin/visualizeGeometry: /usr/lib/x86_64-linux-gnu/libX11.so
../bin/visualizeGeometry: /usr/lib/x86_64-linux-gnu/libXext.so
../bin/visualizeGeometry: /usr/lib/x86_64-linux-gnu/libdc1394.so
../bin/visualizeGeometry: /usr/lib/x86_64-linux-gnu/libavcodec.so
../bin/visualizeGeometry: /usr/lib/x86_64-linux-gnu/libavformat.so
../bin/visualizeGeometry: /usr/lib/x86_64-linux-gnu/libavutil.so
../bin/visualizeGeometry: /usr/lib/x86_64-linux-gnu/libswscale.so
../bin/visualizeGeometry: /usr/lib/x86_64-linux-gnu/libavdevice.so
../bin/visualizeGeometry: /usr/lib/libOpenNI.so
../bin/visualizeGeometry: /usr/lib/libOpenNI2.so
../bin/visualizeGeometry: /usr/lib/x86_64-linux-gnu/libpng.so
../bin/visualizeGeometry: /usr/lib/x86_64-linux-gnu/libz.so
../bin/visualizeGeometry: /usr/lib/x86_64-linux-gnu/libjpeg.so
../bin/visualizeGeometry: /usr/lib/x86_64-linux-gnu/libtiff.so
../bin/visualizeGeometry: /usr/lib/x86_64-linux-gnu/libIlmImf.so
../bin/visualizeGeometry: /usr/lib/x86_64-linux-gnu/libzstd.so
../bin/visualizeGeometry: /usr/lib/x86_64-linux-gnu/liblz4.so
../bin/visualizeGeometry: CMakeFiles/visualizeGeometry.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tutk/zouma/learning/project/Eigen/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/visualizeGeometry"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/visualizeGeometry.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/visualizeGeometry.dir/build: ../bin/visualizeGeometry

.PHONY : CMakeFiles/visualizeGeometry.dir/build

CMakeFiles/visualizeGeometry.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/visualizeGeometry.dir/cmake_clean.cmake
.PHONY : CMakeFiles/visualizeGeometry.dir/clean

CMakeFiles/visualizeGeometry.dir/depend:
	cd /home/tutk/zouma/learning/project/Eigen/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tutk/zouma/learning/project/Eigen /home/tutk/zouma/learning/project/Eigen /home/tutk/zouma/learning/project/Eigen/build /home/tutk/zouma/learning/project/Eigen/build /home/tutk/zouma/learning/project/Eigen/build/CMakeFiles/visualizeGeometry.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/visualizeGeometry.dir/depend

