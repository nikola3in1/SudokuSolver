#ifndef SUDOKUSOLVER_IO_H
#define SUDOKUSOLVER_IO_H

#include <iostream>
#include <fstream>
#include <ctime>
#include <dirent.h>

using namespace std;

class IO {
public:
    IO();
    void outputWithTable(int sudoku[9][9], string fileName);
    void output(int sudoku[9][9], string fileName);
    void getTime(string &fileName);
    int ** input( string fileName);
    int **stdInput();
    void print(int folderId,string fileName);
    virtual ~IO();
    void listDit(int dirId);
};




#endif //SUDOKUSOLVER_IO_H
