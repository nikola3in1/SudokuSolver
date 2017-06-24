cmake_minimum_required(VERSION 3.7)
project(SudokuSolver)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES main.cpp Solver.cpp Solver.h SolverWithIterations.cpp SolverWithIterations.h Menu.cpp Menu.h AbstractSolver.cpp AbstractSolver.h IO.cpp IO.h main.cpp InvalidInputException.h)
add_executable(SudokuSolver ${SOURCE_FILES})