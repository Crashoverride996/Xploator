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
include _deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/flags.make

_deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/src/lock_pool.cpp.o: _deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/flags.make
_deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/src/lock_pool.cpp.o: _deps/boost-src/libs/atomic/src/lock_pool.cpp
_deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/src/lock_pool.cpp.o: _deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/supre/Desktop/Projects/C++/Xploator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object _deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/src/lock_pool.cpp.o"
	cd /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-build/libs/atomic && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/src/lock_pool.cpp.o -MF CMakeFiles/boost_atomic.dir/src/lock_pool.cpp.o.d -o CMakeFiles/boost_atomic.dir/src/lock_pool.cpp.o -c /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-src/libs/atomic/src/lock_pool.cpp

_deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/src/lock_pool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/boost_atomic.dir/src/lock_pool.cpp.i"
	cd /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-build/libs/atomic && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-src/libs/atomic/src/lock_pool.cpp > CMakeFiles/boost_atomic.dir/src/lock_pool.cpp.i

_deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/src/lock_pool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/boost_atomic.dir/src/lock_pool.cpp.s"
	cd /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-build/libs/atomic && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-src/libs/atomic/src/lock_pool.cpp -o CMakeFiles/boost_atomic.dir/src/lock_pool.cpp.s

_deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/src/find_address_sse2.cpp.o: _deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/flags.make
_deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/src/find_address_sse2.cpp.o: _deps/boost-src/libs/atomic/src/find_address_sse2.cpp
_deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/src/find_address_sse2.cpp.o: _deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/supre/Desktop/Projects/C++/Xploator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object _deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/src/find_address_sse2.cpp.o"
	cd /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-build/libs/atomic && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -msse -msse2 -MD -MT _deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/src/find_address_sse2.cpp.o -MF CMakeFiles/boost_atomic.dir/src/find_address_sse2.cpp.o.d -o CMakeFiles/boost_atomic.dir/src/find_address_sse2.cpp.o -c /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-src/libs/atomic/src/find_address_sse2.cpp

_deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/src/find_address_sse2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/boost_atomic.dir/src/find_address_sse2.cpp.i"
	cd /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-build/libs/atomic && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -msse -msse2 -E /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-src/libs/atomic/src/find_address_sse2.cpp > CMakeFiles/boost_atomic.dir/src/find_address_sse2.cpp.i

_deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/src/find_address_sse2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/boost_atomic.dir/src/find_address_sse2.cpp.s"
	cd /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-build/libs/atomic && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -msse -msse2 -S /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-src/libs/atomic/src/find_address_sse2.cpp -o CMakeFiles/boost_atomic.dir/src/find_address_sse2.cpp.s

_deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/src/find_address_sse41.cpp.o: _deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/flags.make
_deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/src/find_address_sse41.cpp.o: _deps/boost-src/libs/atomic/src/find_address_sse41.cpp
_deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/src/find_address_sse41.cpp.o: _deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/supre/Desktop/Projects/C++/Xploator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object _deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/src/find_address_sse41.cpp.o"
	cd /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-build/libs/atomic && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -msse -msse2 -msse3 -mssse3 -msse4.1 -MD -MT _deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/src/find_address_sse41.cpp.o -MF CMakeFiles/boost_atomic.dir/src/find_address_sse41.cpp.o.d -o CMakeFiles/boost_atomic.dir/src/find_address_sse41.cpp.o -c /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-src/libs/atomic/src/find_address_sse41.cpp

_deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/src/find_address_sse41.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/boost_atomic.dir/src/find_address_sse41.cpp.i"
	cd /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-build/libs/atomic && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -msse -msse2 -msse3 -mssse3 -msse4.1 -E /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-src/libs/atomic/src/find_address_sse41.cpp > CMakeFiles/boost_atomic.dir/src/find_address_sse41.cpp.i

_deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/src/find_address_sse41.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/boost_atomic.dir/src/find_address_sse41.cpp.s"
	cd /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-build/libs/atomic && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -msse -msse2 -msse3 -mssse3 -msse4.1 -S /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-src/libs/atomic/src/find_address_sse41.cpp -o CMakeFiles/boost_atomic.dir/src/find_address_sse41.cpp.s

# Object files for target boost_atomic
boost_atomic_OBJECTS = \
"CMakeFiles/boost_atomic.dir/src/lock_pool.cpp.o" \
"CMakeFiles/boost_atomic.dir/src/find_address_sse2.cpp.o" \
"CMakeFiles/boost_atomic.dir/src/find_address_sse41.cpp.o"

# External object files for target boost_atomic
boost_atomic_EXTERNAL_OBJECTS =

_deps/boost-build/libs/atomic/libboost_atomic.a: _deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/src/lock_pool.cpp.o
_deps/boost-build/libs/atomic/libboost_atomic.a: _deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/src/find_address_sse2.cpp.o
_deps/boost-build/libs/atomic/libboost_atomic.a: _deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/src/find_address_sse41.cpp.o
_deps/boost-build/libs/atomic/libboost_atomic.a: _deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/build.make
_deps/boost-build/libs/atomic/libboost_atomic.a: _deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/supre/Desktop/Projects/C++/Xploator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libboost_atomic.a"
	cd /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-build/libs/atomic && $(CMAKE_COMMAND) -P CMakeFiles/boost_atomic.dir/cmake_clean_target.cmake
	cd /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-build/libs/atomic && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/boost_atomic.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/build: _deps/boost-build/libs/atomic/libboost_atomic.a
.PHONY : _deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/build

_deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/clean:
	cd /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-build/libs/atomic && $(CMAKE_COMMAND) -P CMakeFiles/boost_atomic.dir/cmake_clean.cmake
.PHONY : _deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/clean

_deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/depend:
	cd /home/supre/Desktop/Projects/C++/Xploator/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/supre/Desktop/Projects/C++/Xploator /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-src/libs/atomic /home/supre/Desktop/Projects/C++/Xploator/build /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-build/libs/atomic /home/supre/Desktop/Projects/C++/Xploator/build/_deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : _deps/boost-build/libs/atomic/CMakeFiles/boost_atomic.dir/depend

