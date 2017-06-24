#ifndef SUDOKUSOLVER_SOLVERWITHITERATIONS_H
#define SUDOKUSOLVER_SOLVERWITHITERATIONS_H

#include <iostream>
#include "Solver.h"
using namespace std;
class SolverWithIterations : public AbstractSolver{
public:
    int seconds ;
    bool solve(int sudoku[9][9]);
    bool findEmpty(int sudoku [9][9],int &x , int &y);
    bool isLegit(int sudoku [9][9],int x, int y, int broj);
    void printSudoku(int sudoku[9][9]);
    void save(int sudoku[9][9]);
    SolverWithIterations(int sudoku[9][9],int sec);
    SolverWithIterations(int **sudoku,int sec);
    int getSeconds();
    void setSeconds(int seconds);

};




#endif //SUDOKUSOLVER_SOLVERWITHITERATIONS_H
