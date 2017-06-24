#include <cstdlib>
#include "Solver.h"
#include "IO.h"
#include <iostream>
#include <zconf.h>

using namespace std;

 bool Solver::findEmpty(int sudoku [9][9],int &x , int &y){
    for (x = 0; x < 9; ++x){
        for (y = 0; y < 9; ++y){
            if(sudoku[x][y]==0){
                return true;}
        }
    }
    return false;
}
 bool Solver::solve(int sudoku[9][9]){
    int x,y;
    if(!findEmpty(sudoku,x,y))
        return true;

    for (int num = 1; num <= 9; num++)
    {
        if (isLegit(sudoku,x, y,num))
        {
            sudoku[x][y] = num;
            if (solve(sudoku))
                return true;
            sudoku[x][y] = 0;
        }
    }
    return false;
}
 bool Solver::isLegit(int sudoku[9][9],int x, int y, int broj) {
    int kvadratX = 3 * (x / 3), kvadratY = 3 * (y / 3);
    for (int i = 0; i < 9; i++) {
        if (sudoku[x][i] == broj) { return false;}
        if (sudoku[i][y] == broj) { return false;}

    }
    for (int i = kvadratX; i < (kvadratX +3); ++i) {
        for (int j = kvadratY; j < (kvadratY +3) ; ++j) {
            if(sudoku[i][j]== broj){
                return false;
            }
        }
    }
    return true;
}
 void Solver::printSudoku(int sudoku[9][9]) {
    for (int i = 0; i < 9; ++i) {
        cout << " ";
        for (int j = 0; j < 9; ++j) {
            if (sudoku[i][j] != 0) {
                if (j == 2 || j == 5) {
                    cout << sudoku[i][j] << " █ ";
                } else {
                    if (j < 8) { cout << sudoku[i][j] << " | "; }
                    else { cout << sudoku[i][j]; }
                }
            } else {
                if (j == 2 || j == 5) {
                    cout << "  █ ";
                } else {
                    if (j < 8) { cout << "  | "; }
                }
            }
        }
        cout << endl;

        if (i == 2 || i == 5) {
            cout << "▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄";
        } else {
            if (i < 8) { cout << "-----------█-----------█------------"; }
        }
        cout << endl;
    }
}

Solver::Solver(int sudoku [9][9]) {
    if(solve(sudoku)){
        printSudoku(sudoku);
        cout<<"Done!"<<endl;
    }else{
        printSudoku(sudoku);
        cout<<"There is no solution for this sudoku. :(\nNote: Check your input and try again. ;)"<<endl;
    }
}
Solver::~Solver() {}

Solver::Solver(int **sudoku) {

    int temp[9][9];
    for (int i = 0; i < 9; ++i) {
        for (int j = 0; j < 9; ++j) {
            temp[i][j]=sudoku[i][j];
        }}

    if(solve(temp)){
        printSudoku(temp);
        cout<<"Done!"<<endl;
        save(temp);

    }else{
        printSudoku(temp);
        cout<<"There is no solution for this sudoku. :(\nNote: Check your input and try again. ;)"<<endl;
    }
}

Solver::Solver() {
}

void Solver::save(int sudoku[9][9]) {
    IO io = IO();
    string choice;
    cout<<"Do you want to save this puzzle? \n"
            "st     /saves with table\n"
            "s      /saves without table\n"
            "press any key to skip...\n";
    cout<<">";
    getline(cin,choice);
    if(choice.compare("st")==0){
        string filename;
        cout<<"Enter the file name or leave empty to name file after the current date/time\n";
        cout<<"Filename: ";
        getline(cin,filename);
        io.outputWithTable(sudoku,filename);
    }else if(choice.compare("s")==0){
        string filename;
        cout<<"Enter the file name or leave empty to name file after the current date/time\n";
        cout<<"Filename: ";
        getline(cin,filename);
        io.output(sudoku,filename);
    }
}
