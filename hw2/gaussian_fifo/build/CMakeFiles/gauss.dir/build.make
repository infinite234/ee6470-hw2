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
CMAKE_SOURCE_DIR = /home/user/ee6470/docker-images/EE6470/hw2/gaussian_fifo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/user/ee6470/docker-images/EE6470/hw2/gaussian_fifo/build

# Include any dependencies generated for this target.
include CMakeFiles/gauss.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/gauss.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/gauss.dir/flags.make

CMakeFiles/gauss.dir/Testbench.cpp.o: CMakeFiles/gauss.dir/flags.make
CMakeFiles/gauss.dir/Testbench.cpp.o: ../Testbench.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/ee6470/docker-images/EE6470/hw2/gaussian_fifo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/gauss.dir/Testbench.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gauss.dir/Testbench.cpp.o -c /home/user/ee6470/docker-images/EE6470/hw2/gaussian_fifo/Testbench.cpp

CMakeFiles/gauss.dir/Testbench.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gauss.dir/Testbench.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/ee6470/docker-images/EE6470/hw2/gaussian_fifo/Testbench.cpp > CMakeFiles/gauss.dir/Testbench.cpp.i

CMakeFiles/gauss.dir/Testbench.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gauss.dir/Testbench.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/ee6470/docker-images/EE6470/hw2/gaussian_fifo/Testbench.cpp -o CMakeFiles/gauss.dir/Testbench.cpp.s

CMakeFiles/gauss.dir/gaussFilter.cpp.o: CMakeFiles/gauss.dir/flags.make
CMakeFiles/gauss.dir/gaussFilter.cpp.o: ../gaussFilter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/ee6470/docker-images/EE6470/hw2/gaussian_fifo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/gauss.dir/gaussFilter.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gauss.dir/gaussFilter.cpp.o -c /home/user/ee6470/docker-images/EE6470/hw2/gaussian_fifo/gaussFilter.cpp

CMakeFiles/gauss.dir/gaussFilter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gauss.dir/gaussFilter.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/ee6470/docker-images/EE6470/hw2/gaussian_fifo/gaussFilter.cpp > CMakeFiles/gauss.dir/gaussFilter.cpp.i

CMakeFiles/gauss.dir/gaussFilter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gauss.dir/gaussFilter.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/ee6470/docker-images/EE6470/hw2/gaussian_fifo/gaussFilter.cpp -o CMakeFiles/gauss.dir/gaussFilter.cpp.s

CMakeFiles/gauss.dir/main.cpp.o: CMakeFiles/gauss.dir/flags.make
CMakeFiles/gauss.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/ee6470/docker-images/EE6470/hw2/gaussian_fifo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/gauss.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gauss.dir/main.cpp.o -c /home/user/ee6470/docker-images/EE6470/hw2/gaussian_fifo/main.cpp

CMakeFiles/gauss.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gauss.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/ee6470/docker-images/EE6470/hw2/gaussian_fifo/main.cpp > CMakeFiles/gauss.dir/main.cpp.i

CMakeFiles/gauss.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gauss.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/ee6470/docker-images/EE6470/hw2/gaussian_fifo/main.cpp -o CMakeFiles/gauss.dir/main.cpp.s

# Object files for target gauss
gauss_OBJECTS = \
"CMakeFiles/gauss.dir/Testbench.cpp.o" \
"CMakeFiles/gauss.dir/gaussFilter.cpp.o" \
"CMakeFiles/gauss.dir/main.cpp.o"

# External object files for target gauss
gauss_EXTERNAL_OBJECTS =

gauss: CMakeFiles/gauss.dir/Testbench.cpp.o
gauss: CMakeFiles/gauss.dir/gaussFilter.cpp.o
gauss: CMakeFiles/gauss.dir/main.cpp.o
gauss: CMakeFiles/gauss.dir/build.make
gauss: /opt/systemc/lib/libsystemc.so.2.3.3
gauss: CMakeFiles/gauss.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/user/ee6470/docker-images/EE6470/hw2/gaussian_fifo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable gauss"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gauss.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/gauss.dir/build: gauss

.PHONY : CMakeFiles/gauss.dir/build

CMakeFiles/gauss.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gauss.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gauss.dir/clean

CMakeFiles/gauss.dir/depend:
	cd /home/user/ee6470/docker-images/EE6470/hw2/gaussian_fifo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user/ee6470/docker-images/EE6470/hw2/gaussian_fifo /home/user/ee6470/docker-images/EE6470/hw2/gaussian_fifo /home/user/ee6470/docker-images/EE6470/hw2/gaussian_fifo/build /home/user/ee6470/docker-images/EE6470/hw2/gaussian_fifo/build /home/user/ee6470/docker-images/EE6470/hw2/gaussian_fifo/build/CMakeFiles/gauss.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gauss.dir/depend

