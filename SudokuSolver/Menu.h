#ifndef SUDOKUSOLVER_MENU_H
#define SUDOKUSOLVER_MENU_H

#include <cstdlib>
#include <iostream>
using namespace std;


class Menu {
public:
    static void welcomeScreen();
    static void mainMenu();
    static int exit();
    Menu();
    virtual ~Menu();
};


#endif //SUDOKUSOLVER_MENU_H
