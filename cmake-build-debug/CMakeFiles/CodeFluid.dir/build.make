# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/wangchenhui/github/CanoebyGuitar/CodeFluid

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/wangchenhui/github/CanoebyGuitar/CodeFluid/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/CodeFluid.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/CodeFluid.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CodeFluid.dir/flags.make

CMakeFiles/CodeFluid.dir/main.cpp.o: CMakeFiles/CodeFluid.dir/flags.make
CMakeFiles/CodeFluid.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/wangchenhui/github/CanoebyGuitar/CodeFluid/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CodeFluid.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CodeFluid.dir/main.cpp.o -c /Users/wangchenhui/github/CanoebyGuitar/CodeFluid/main.cpp

CMakeFiles/CodeFluid.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CodeFluid.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wangchenhui/github/CanoebyGuitar/CodeFluid/main.cpp > CMakeFiles/CodeFluid.dir/main.cpp.i

CMakeFiles/CodeFluid.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CodeFluid.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wangchenhui/github/CanoebyGuitar/CodeFluid/main.cpp -o CMakeFiles/CodeFluid.dir/main.cpp.s

CMakeFiles/CodeFluid.dir/src/particle_system_data2.cpp.o: CMakeFiles/CodeFluid.dir/flags.make
CMakeFiles/CodeFluid.dir/src/particle_system_data2.cpp.o: ../src/particle_system_data2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/wangchenhui/github/CanoebyGuitar/CodeFluid/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/CodeFluid.dir/src/particle_system_data2.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CodeFluid.dir/src/particle_system_data2.cpp.o -c /Users/wangchenhui/github/CanoebyGuitar/CodeFluid/src/particle_system_data2.cpp

CMakeFiles/CodeFluid.dir/src/particle_system_data2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CodeFluid.dir/src/particle_system_data2.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wangchenhui/github/CanoebyGuitar/CodeFluid/src/particle_system_data2.cpp > CMakeFiles/CodeFluid.dir/src/particle_system_data2.cpp.i

CMakeFiles/CodeFluid.dir/src/particle_system_data2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CodeFluid.dir/src/particle_system_data2.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wangchenhui/github/CanoebyGuitar/CodeFluid/src/particle_system_data2.cpp -o CMakeFiles/CodeFluid.dir/src/particle_system_data2.cpp.s

# Object files for target CodeFluid
CodeFluid_OBJECTS = \
"CMakeFiles/CodeFluid.dir/main.cpp.o" \
"CMakeFiles/CodeFluid.dir/src/particle_system_data2.cpp.o"

# External object files for target CodeFluid
CodeFluid_EXTERNAL_OBJECTS =

CodeFluid: CMakeFiles/CodeFluid.dir/main.cpp.o
CodeFluid: CMakeFiles/CodeFluid.dir/src/particle_system_data2.cpp.o
CodeFluid: CMakeFiles/CodeFluid.dir/build.make
CodeFluid: CMakeFiles/CodeFluid.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/wangchenhui/github/CanoebyGuitar/CodeFluid/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable CodeFluid"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CodeFluid.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CodeFluid.dir/build: CodeFluid
.PHONY : CMakeFiles/CodeFluid.dir/build

CMakeFiles/CodeFluid.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CodeFluid.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CodeFluid.dir/clean

CMakeFiles/CodeFluid.dir/depend:
	cd /Users/wangchenhui/github/CanoebyGuitar/CodeFluid/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/wangchenhui/github/CanoebyGuitar/CodeFluid /Users/wangchenhui/github/CanoebyGuitar/CodeFluid /Users/wangchenhui/github/CanoebyGuitar/CodeFluid/cmake-build-debug /Users/wangchenhui/github/CanoebyGuitar/CodeFluid/cmake-build-debug /Users/wangchenhui/github/CanoebyGuitar/CodeFluid/cmake-build-debug/CMakeFiles/CodeFluid.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CodeFluid.dir/depend

