# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/supre/Desktop/Projects/C++/Xploator

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/supre/Desktop/Projects/C++/Xploator/build

# Include any dependencies generated for this target.
include CMakeFiles/xploator.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/xploator.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/xploator.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/xploator.dir/flags.make

CMakeFiles/xploator.dir/src/main.cpp.o: CMakeFiles/xploator.dir/flags.make
CMakeFiles/xploator.dir/src/main.cpp.o: /home/supre/Desktop/Projects/C++/Xploator/src/main.cpp
CMakeFiles/xploator.dir/src/main.cpp.o: CMakeFiles/xploator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/supre/Desktop/Projects/C++/Xploator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/xploator.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/xploator.dir/src/main.cpp.o -MF CMakeFiles/xploator.dir/src/main.cpp.o.d -o CMakeFiles/xploator.dir/src/main.cpp.o -c /home/supre/Desktop/Projects/C++/Xploator/src/main.cpp

CMakeFiles/xploator.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/xploator.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/supre/Desktop/Projects/C++/Xploator/src/main.cpp > CMakeFiles/xploator.dir/src/main.cpp.i

CMakeFiles/xploator.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/xploator.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/supre/Desktop/Projects/C++/Xploator/src/main.cpp -o CMakeFiles/xploator.dir/src/main.cpp.s

CMakeFiles/xploator.dir/src/utils.cpp.o: CMakeFiles/xploator.dir/flags.make
CMakeFiles/xploator.dir/src/utils.cpp.o: /home/supre/Desktop/Projects/C++/Xploator/src/utils.cpp
CMakeFiles/xploator.dir/src/utils.cpp.o: CMakeFiles/xploator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/supre/Desktop/Projects/C++/Xploator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/xploator.dir/src/utils.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/xploator.dir/src/utils.cpp.o -MF CMakeFiles/xploator.dir/src/utils.cpp.o.d -o CMakeFiles/xploator.dir/src/utils.cpp.o -c /home/supre/Desktop/Projects/C++/Xploator/src/utils.cpp

CMakeFiles/xploator.dir/src/utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/xploator.dir/src/utils.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/supre/Desktop/Projects/C++/Xploator/src/utils.cpp > CMakeFiles/xploator.dir/src/utils.cpp.i

CMakeFiles/xploator.dir/src/utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/xploator.dir/src/utils.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/supre/Desktop/Projects/C++/Xploator/src/utils.cpp -o CMakeFiles/xploator.dir/src/utils.cpp.s

# Object files for target xploator
xploator_OBJECTS = \
"CMakeFiles/xploator.dir/src/main.cpp.o" \
"CMakeFiles/xploator.dir/src/utils.cpp.o"

# External object files for target xploator
xploator_EXTERNAL_OBJECTS =

xploator: CMakeFiles/xploator.dir/src/main.cpp.o
xploator: CMakeFiles/xploator.dir/src/utils.cpp.o
xploator: CMakeFiles/xploator.dir/build.make
xploator: /usr/lib/libcurl.so
xploator: CMakeFiles/xploator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/supre/Desktop/Projects/C++/Xploator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable xploator"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/xploator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/xploator.dir/build: xploator
.PHONY : CMakeFiles/xploator.dir/build

CMakeFiles/xploator.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/xploator.dir/cmake_clean.cmake
.PHONY : CMakeFiles/xploator.dir/clean

CMakeFiles/xploator.dir/depend:
	cd /home/supre/Desktop/Projects/C++/Xploator/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/supre/Desktop/Projects/C++/Xploator /home/supre/Desktop/Projects/C++/Xploator /home/supre/Desktop/Projects/C++/Xploator/build /home/supre/Desktop/Projects/C++/Xploator/build /home/supre/Desktop/Projects/C++/Xploator/build/CMakeFiles/xploator.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/xploator.dir/depend
