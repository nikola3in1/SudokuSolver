//
// Created by nikola3in1 on 21.5.17..
//

#ifndef SUDOKUSOLVER_SOLVER_H
#define SUDOKUSOLVER_SOLVER_H


#include "AbstractSolver.h"

class Solver : public AbstractSolver{
public:
     bool solve(int sudoku[9][9]);
     bool findEmpty(int sudoku [9][9],int &x , int &y);
     bool isLegit(int sudoku [9][9],int x, int y, int broj);
     void printSudoku(int sudoku[9][9]);
     void save(int sudoku[9][9]);
    Solver(int sudoku[9][9]);

    Solver(int **sudoku);

    Solver();


    virtual ~Solver();
};


#endif //SUDOKUSOLVER_SOLVER_H
