//
// Created by nikola3in1 on 21.5.17..
//

#ifndef SUDOKUSOLVER_ABSTRACTSOLVER_H
#define SUDOKUSOLVER_ABSTRACTSOLVER_H


class AbstractSolver {
    virtual bool solve(int sudoku[9][9])=0;
    virtual bool findEmpty(int sudoku [9][9],int &x , int &y)=0;
    virtual bool isLegit(int sudoku [9][9],int x, int y, int broj)=0;
    virtual void printSudoku(int sudoku[9][9])=0;
};


#endif //SUDOKUSOLVER_ABSTRACTSOLVER_H
