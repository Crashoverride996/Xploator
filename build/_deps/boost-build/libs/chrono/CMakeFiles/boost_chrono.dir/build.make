# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
include _deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/flags.make

_deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/src/chrono.cpp.o: _deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/flags.make
_deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/src/chrono.cpp.o: _deps/boost-src/libs/chrono/src/chrono.cpp
_deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/src/chrono.cpp.o: _deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/supre/Desktop/Projects/C++/Xploator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object _deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/src/chrono.cpp.o"
	cd /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-build/libs/chrono && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/src/chrono.cpp.o -MF CMakeFiles/boost_chrono.dir/src/chrono.cpp.o.d -o CMakeFiles/boost_chrono.dir/src/chrono.cpp.o -c /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-src/libs/chrono/src/chrono.cpp

_deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/src/chrono.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/boost_chrono.dir/src/chrono.cpp.i"
	cd /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-build/libs/chrono && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-src/libs/chrono/src/chrono.cpp > CMakeFiles/boost_chrono.dir/src/chrono.cpp.i

_deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/src/chrono.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/boost_chrono.dir/src/chrono.cpp.s"
	cd /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-build/libs/chrono && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-src/libs/chrono/src/chrono.cpp -o CMakeFiles/boost_chrono.dir/src/chrono.cpp.s

_deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/src/process_cpu_clocks.cpp.o: _deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/flags.make
_deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/src/process_cpu_clocks.cpp.o: _deps/boost-src/libs/chrono/src/process_cpu_clocks.cpp
_deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/src/process_cpu_clocks.cpp.o: _deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/supre/Desktop/Projects/C++/Xploator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object _deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/src/process_cpu_clocks.cpp.o"
	cd /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-build/libs/chrono && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/src/process_cpu_clocks.cpp.o -MF CMakeFiles/boost_chrono.dir/src/process_cpu_clocks.cpp.o.d -o CMakeFiles/boost_chrono.dir/src/process_cpu_clocks.cpp.o -c /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-src/libs/chrono/src/process_cpu_clocks.cpp

_deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/src/process_cpu_clocks.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/boost_chrono.dir/src/process_cpu_clocks.cpp.i"
	cd /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-build/libs/chrono && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-src/libs/chrono/src/process_cpu_clocks.cpp > CMakeFiles/boost_chrono.dir/src/process_cpu_clocks.cpp.i

_deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/src/process_cpu_clocks.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/boost_chrono.dir/src/process_cpu_clocks.cpp.s"
	cd /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-build/libs/chrono && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-src/libs/chrono/src/process_cpu_clocks.cpp -o CMakeFiles/boost_chrono.dir/src/process_cpu_clocks.cpp.s

_deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/src/thread_clock.cpp.o: _deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/flags.make
_deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/src/thread_clock.cpp.o: _deps/boost-src/libs/chrono/src/thread_clock.cpp
_deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/src/thread_clock.cpp.o: _deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/supre/Desktop/Projects/C++/Xploator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object _deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/src/thread_clock.cpp.o"
	cd /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-build/libs/chrono && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/src/thread_clock.cpp.o -MF CMakeFiles/boost_chrono.dir/src/thread_clock.cpp.o.d -o CMakeFiles/boost_chrono.dir/src/thread_clock.cpp.o -c /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-src/libs/chrono/src/thread_clock.cpp

_deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/src/thread_clock.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/boost_chrono.dir/src/thread_clock.cpp.i"
	cd /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-build/libs/chrono && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-src/libs/chrono/src/thread_clock.cpp > CMakeFiles/boost_chrono.dir/src/thread_clock.cpp.i

_deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/src/thread_clock.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/boost_chrono.dir/src/thread_clock.cpp.s"
	cd /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-build/libs/chrono && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-src/libs/chrono/src/thread_clock.cpp -o CMakeFiles/boost_chrono.dir/src/thread_clock.cpp.s

# Object files for target boost_chrono
boost_chrono_OBJECTS = \
"CMakeFiles/boost_chrono.dir/src/chrono.cpp.o" \
"CMakeFiles/boost_chrono.dir/src/process_cpu_clocks.cpp.o" \
"CMakeFiles/boost_chrono.dir/src/thread_clock.cpp.o"

# External object files for target boost_chrono
boost_chrono_EXTERNAL_OBJECTS =

_deps/boost-build/libs/chrono/libboost_chrono.a: _deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/src/chrono.cpp.o
_deps/boost-build/libs/chrono/libboost_chrono.a: _deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/src/process_cpu_clocks.cpp.o
_deps/boost-build/libs/chrono/libboost_chrono.a: _deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/src/thread_clock.cpp.o
_deps/boost-build/libs/chrono/libboost_chrono.a: _deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/build.make
_deps/boost-build/libs/chrono/libboost_chrono.a: _deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/supre/Desktop/Projects/C++/Xploator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libboost_chrono.a"
	cd /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-build/libs/chrono && $(CMAKE_COMMAND) -P CMakeFiles/boost_chrono.dir/cmake_clean_target.cmake
	cd /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-build/libs/chrono && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/boost_chrono.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/build: _deps/boost-build/libs/chrono/libboost_chrono.a
.PHONY : _deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/build

_deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/clean:
	cd /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-build/libs/chrono && $(CMAKE_COMMAND) -P CMakeFiles/boost_chrono.dir/cmake_clean.cmake
.PHONY : _deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/clean

_deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/depend:
	cd /home/supre/Desktop/Projects/C++/Xploator/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/supre/Desktop/Projects/C++/Xploator /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-src/libs/chrono /home/supre/Desktop/Projects/C++/Xploator/build /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-build/libs/chrono /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : _deps/boost-build/libs/chrono/CMakeFiles/boost_chrono.dir/depend

