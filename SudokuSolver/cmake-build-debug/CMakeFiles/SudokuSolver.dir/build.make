# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_COMMAND = /home/nikola3in1/Programs/CLion/clion-2016.3.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/nikola3in1/Programs/CLion/clion-2016.3.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/SudokuSolver.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/SudokuSolver.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SudokuSolver.dir/flags.make

CMakeFiles/SudokuSolver.dir/main.cpp.o: CMakeFiles/SudokuSolver.dir/flags.make
CMakeFiles/SudokuSolver.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SudokuSolver.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SudokuSolver.dir/main.cpp.o -c /home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver/main.cpp

CMakeFiles/SudokuSolver.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SudokuSolver.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver/main.cpp > CMakeFiles/SudokuSolver.dir/main.cpp.i

CMakeFiles/SudokuSolver.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SudokuSolver.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver/main.cpp -o CMakeFiles/SudokuSolver.dir/main.cpp.s

CMakeFiles/SudokuSolver.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/SudokuSolver.dir/main.cpp.o.requires

CMakeFiles/SudokuSolver.dir/main.cpp.o.provides: CMakeFiles/SudokuSolver.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/SudokuSolver.dir/build.make CMakeFiles/SudokuSolver.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/SudokuSolver.dir/main.cpp.o.provides

CMakeFiles/SudokuSolver.dir/main.cpp.o.provides.build: CMakeFiles/SudokuSolver.dir/main.cpp.o


CMakeFiles/SudokuSolver.dir/Solver.cpp.o: CMakeFiles/SudokuSolver.dir/flags.make
CMakeFiles/SudokuSolver.dir/Solver.cpp.o: ../Solver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/SudokuSolver.dir/Solver.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SudokuSolver.dir/Solver.cpp.o -c /home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver/Solver.cpp

CMakeFiles/SudokuSolver.dir/Solver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SudokuSolver.dir/Solver.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver/Solver.cpp > CMakeFiles/SudokuSolver.dir/Solver.cpp.i

CMakeFiles/SudokuSolver.dir/Solver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SudokuSolver.dir/Solver.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver/Solver.cpp -o CMakeFiles/SudokuSolver.dir/Solver.cpp.s

CMakeFiles/SudokuSolver.dir/Solver.cpp.o.requires:

.PHONY : CMakeFiles/SudokuSolver.dir/Solver.cpp.o.requires

CMakeFiles/SudokuSolver.dir/Solver.cpp.o.provides: CMakeFiles/SudokuSolver.dir/Solver.cpp.o.requires
	$(MAKE) -f CMakeFiles/SudokuSolver.dir/build.make CMakeFiles/SudokuSolver.dir/Solver.cpp.o.provides.build
.PHONY : CMakeFiles/SudokuSolver.dir/Solver.cpp.o.provides

CMakeFiles/SudokuSolver.dir/Solver.cpp.o.provides.build: CMakeFiles/SudokuSolver.dir/Solver.cpp.o


CMakeFiles/SudokuSolver.dir/SolverWithIterations.cpp.o: CMakeFiles/SudokuSolver.dir/flags.make
CMakeFiles/SudokuSolver.dir/SolverWithIterations.cpp.o: ../SolverWithIterations.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/SudokuSolver.dir/SolverWithIterations.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SudokuSolver.dir/SolverWithIterations.cpp.o -c /home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver/SolverWithIterations.cpp

CMakeFiles/SudokuSolver.dir/SolverWithIterations.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SudokuSolver.dir/SolverWithIterations.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver/SolverWithIterations.cpp > CMakeFiles/SudokuSolver.dir/SolverWithIterations.cpp.i

CMakeFiles/SudokuSolver.dir/SolverWithIterations.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SudokuSolver.dir/SolverWithIterations.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver/SolverWithIterations.cpp -o CMakeFiles/SudokuSolver.dir/SolverWithIterations.cpp.s

CMakeFiles/SudokuSolver.dir/SolverWithIterations.cpp.o.requires:

.PHONY : CMakeFiles/SudokuSolver.dir/SolverWithIterations.cpp.o.requires

CMakeFiles/SudokuSolver.dir/SolverWithIterations.cpp.o.provides: CMakeFiles/SudokuSolver.dir/SolverWithIterations.cpp.o.requires
	$(MAKE) -f CMakeFiles/SudokuSolver.dir/build.make CMakeFiles/SudokuSolver.dir/SolverWithIterations.cpp.o.provides.build
.PHONY : CMakeFiles/SudokuSolver.dir/SolverWithIterations.cpp.o.provides

CMakeFiles/SudokuSolver.dir/SolverWithIterations.cpp.o.provides.build: CMakeFiles/SudokuSolver.dir/SolverWithIterations.cpp.o


CMakeFiles/SudokuSolver.dir/Menu.cpp.o: CMakeFiles/SudokuSolver.dir/flags.make
CMakeFiles/SudokuSolver.dir/Menu.cpp.o: ../Menu.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/SudokuSolver.dir/Menu.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SudokuSolver.dir/Menu.cpp.o -c /home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver/Menu.cpp

CMakeFiles/SudokuSolver.dir/Menu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SudokuSolver.dir/Menu.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver/Menu.cpp > CMakeFiles/SudokuSolver.dir/Menu.cpp.i

CMakeFiles/SudokuSolver.dir/Menu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SudokuSolver.dir/Menu.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver/Menu.cpp -o CMakeFiles/SudokuSolver.dir/Menu.cpp.s

CMakeFiles/SudokuSolver.dir/Menu.cpp.o.requires:

.PHONY : CMakeFiles/SudokuSolver.dir/Menu.cpp.o.requires

CMakeFiles/SudokuSolver.dir/Menu.cpp.o.provides: CMakeFiles/SudokuSolver.dir/Menu.cpp.o.requires
	$(MAKE) -f CMakeFiles/SudokuSolver.dir/build.make CMakeFiles/SudokuSolver.dir/Menu.cpp.o.provides.build
.PHONY : CMakeFiles/SudokuSolver.dir/Menu.cpp.o.provides

CMakeFiles/SudokuSolver.dir/Menu.cpp.o.provides.build: CMakeFiles/SudokuSolver.dir/Menu.cpp.o


CMakeFiles/SudokuSolver.dir/AbstractSolver.cpp.o: CMakeFiles/SudokuSolver.dir/flags.make
CMakeFiles/SudokuSolver.dir/AbstractSolver.cpp.o: ../AbstractSolver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/SudokuSolver.dir/AbstractSolver.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SudokuSolver.dir/AbstractSolver.cpp.o -c /home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver/AbstractSolver.cpp

CMakeFiles/SudokuSolver.dir/AbstractSolver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SudokuSolver.dir/AbstractSolver.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver/AbstractSolver.cpp > CMakeFiles/SudokuSolver.dir/AbstractSolver.cpp.i

CMakeFiles/SudokuSolver.dir/AbstractSolver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SudokuSolver.dir/AbstractSolver.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver/AbstractSolver.cpp -o CMakeFiles/SudokuSolver.dir/AbstractSolver.cpp.s

CMakeFiles/SudokuSolver.dir/AbstractSolver.cpp.o.requires:

.PHONY : CMakeFiles/SudokuSolver.dir/AbstractSolver.cpp.o.requires

CMakeFiles/SudokuSolver.dir/AbstractSolver.cpp.o.provides: CMakeFiles/SudokuSolver.dir/AbstractSolver.cpp.o.requires
	$(MAKE) -f CMakeFiles/SudokuSolver.dir/build.make CMakeFiles/SudokuSolver.dir/AbstractSolver.cpp.o.provides.build
.PHONY : CMakeFiles/SudokuSolver.dir/AbstractSolver.cpp.o.provides

CMakeFiles/SudokuSolver.dir/AbstractSolver.cpp.o.provides.build: CMakeFiles/SudokuSolver.dir/AbstractSolver.cpp.o


CMakeFiles/SudokuSolver.dir/IO.cpp.o: CMakeFiles/SudokuSolver.dir/flags.make
CMakeFiles/SudokuSolver.dir/IO.cpp.o: ../IO.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/SudokuSolver.dir/IO.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SudokuSolver.dir/IO.cpp.o -c /home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver/IO.cpp

CMakeFiles/SudokuSolver.dir/IO.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SudokuSolver.dir/IO.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver/IO.cpp > CMakeFiles/SudokuSolver.dir/IO.cpp.i

CMakeFiles/SudokuSolver.dir/IO.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SudokuSolver.dir/IO.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver/IO.cpp -o CMakeFiles/SudokuSolver.dir/IO.cpp.s

CMakeFiles/SudokuSolver.dir/IO.cpp.o.requires:

.PHONY : CMakeFiles/SudokuSolver.dir/IO.cpp.o.requires

CMakeFiles/SudokuSolver.dir/IO.cpp.o.provides: CMakeFiles/SudokuSolver.dir/IO.cpp.o.requires
	$(MAKE) -f CMakeFiles/SudokuSolver.dir/build.make CMakeFiles/SudokuSolver.dir/IO.cpp.o.provides.build
.PHONY : CMakeFiles/SudokuSolver.dir/IO.cpp.o.provides

CMakeFiles/SudokuSolver.dir/IO.cpp.o.provides.build: CMakeFiles/SudokuSolver.dir/IO.cpp.o


# Object files for target SudokuSolver
SudokuSolver_OBJECTS = \
"CMakeFiles/SudokuSolver.dir/main.cpp.o" \
"CMakeFiles/SudokuSolver.dir/Solver.cpp.o" \
"CMakeFiles/SudokuSolver.dir/SolverWithIterations.cpp.o" \
"CMakeFiles/SudokuSolver.dir/Menu.cpp.o" \
"CMakeFiles/SudokuSolver.dir/AbstractSolver.cpp.o" \
"CMakeFiles/SudokuSolver.dir/IO.cpp.o"

# External object files for target SudokuSolver
SudokuSolver_EXTERNAL_OBJECTS =

SudokuSolver: CMakeFiles/SudokuSolver.dir/main.cpp.o
SudokuSolver: CMakeFiles/SudokuSolver.dir/Solver.cpp.o
SudokuSolver: CMakeFiles/SudokuSolver.dir/SolverWithIterations.cpp.o
SudokuSolver: CMakeFiles/SudokuSolver.dir/Menu.cpp.o
SudokuSolver: CMakeFiles/SudokuSolver.dir/AbstractSolver.cpp.o
SudokuSolver: CMakeFiles/SudokuSolver.dir/IO.cpp.o
SudokuSolver: CMakeFiles/SudokuSolver.dir/build.make
SudokuSolver: CMakeFiles/SudokuSolver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable SudokuSolver"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SudokuSolver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SudokuSolver.dir/build: SudokuSolver

.PHONY : CMakeFiles/SudokuSolver.dir/build

CMakeFiles/SudokuSolver.dir/requires: CMakeFiles/SudokuSolver.dir/main.cpp.o.requires
CMakeFiles/SudokuSolver.dir/requires: CMakeFiles/SudokuSolver.dir/Solver.cpp.o.requires
CMakeFiles/SudokuSolver.dir/requires: CMakeFiles/SudokuSolver.dir/SolverWithIterations.cpp.o.requires
CMakeFiles/SudokuSolver.dir/requires: CMakeFiles/SudokuSolver.dir/Menu.cpp.o.requires
CMakeFiles/SudokuSolver.dir/requires: CMakeFiles/SudokuSolver.dir/AbstractSolver.cpp.o.requires
CMakeFiles/SudokuSolver.dir/requires: CMakeFiles/SudokuSolver.dir/IO.cpp.o.requires

.PHONY : CMakeFiles/SudokuSolver.dir/requires

CMakeFiles/SudokuSolver.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SudokuSolver.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SudokuSolver.dir/clean

CMakeFiles/SudokuSolver.dir/depend:
	cd /home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver /home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver /home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver/cmake-build-debug /home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver/cmake-build-debug /home/nikola3in1/MyFiles/IT/Cpp/SudokuSolver/cmake-build-debug/CMakeFiles/SudokuSolver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SudokuSolver.dir/depend
