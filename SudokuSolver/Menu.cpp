#include <iostream>
#include "Menu.h"
#include "IO.h"
#include "AbstractSolver.h"
#include "Solver.h"
#include "SolverWithIterations.h"

void cls() {
#ifdef WINDOWS
    system("cls");
#else
    system ("clear");
#endif
}
using namespace std;

void Menu::welcomeScreen() {
    cls();
    cout<<"\nWelcome to ..."<<"\n"
            "███████╗██╗   ██╗██████╗  ██████╗ ██╗  ██╗██╗   ██╗    ███████╗ ██████╗ ██╗    ██╗   ██╗███████╗██████╗   ██╗\n"
            "██╔════╝██║   ██║██╔══██╗██╔═══██╗██║ ██╔╝██║   ██║    ██╔════╝██╔═══██╗██║    ██║   ██║██╔════╝██╔══██╗  ██║\n"
            "███████╗██║   ██║██║  ██║██║   ██║█████╔╝ ██║   ██║    ███████╗██║   ██║██║    ██║   ██║█████╗  ██████╔╝  ██║\n"
            "╚════██║██║   ██║██║  ██║██║   ██║██╔═██╗ ██║   ██║    ╚════██║██║   ██║██║    ╚██╗ ██╔╝██╔══╝  ██╔══██╗  ╚═╝\n"
            "███████║╚██████╔╝██████╔╝╚██████╔╝██║  ██╗╚██████╔╝    ███████║╚██████╔╝███████╗╚████╔╝ ███████╗██║  ██║  ██╗\n"
            "╚══════╝ ╚═════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝ ╚═════╝     ╚══════╝ ╚═════╝ ╚══════╝ ╚═══╝  ╚══════╝╚═╝  ╚═╝  ╚═╝\n"
            "                                                                                   first time here? type help"<<endl;
}

void Menu::mainMenu() {
    IO io = IO();
    AbstractSolver *abs;
    int ** sudoku;
    bool isRunning=true;
    bool isSudoku=false;
    string input;

    while(isRunning){
        cout<<">";
        getline(cin,input);
        if(input.compare("help") == 0){
                cout<<"  solve                 /solves entered sudoku\n"<<
                        "  solve -i              /solves sudoku with time delay between iterations\n"
                        "  load -k               /allows user to enter sudoku from stdin\n"
                        "  load -u               /loads unsolved sudoku from file\n"
                        "  ls -s                 /lists solved sudoku files without board\n"
                        "  ls -st                /lists solved sudoku files with board\n"
                        "  ls -u                 /lists unsolved sudoku files\n"
                        "  print -s              /prints solved sudoku\n"
                        "  print -st             /prints solved sudoku with table\n"
                        "  cls, back, menu       /clears console log\n"
                        "  exit, quit            /exits program\n";
        }else if(input.compare("solve")==0){
            string choice;
            if(isSudoku){
                welcomeScreen();
                cout<<endl;
                abs=new Solver(sudoku);
            }else{
                cout<<"Hmm.. there's nothing to solve. Try load first, than solve"<<endl;
            }
            mainMenu();
        }
        else if(input.compare("solve -i")==0){
            int sec;
            char check;
            if(isSudoku){
                cout<<"Enter the delay interval (sec): ";
                cin>> check;
                if(check> 48 && check<58){
                welcomeScreen();
                cout<<endl;
                abs = new SolverWithIterations(sudoku,sec);
                free(sudoku);
                }else{
                    cout<<"Invalid input.\n";
                }
            }else{
                cout<<"Hmm.. there's nothing to solve. Try load first, than solve"<<endl;
            }
            mainMenu();

        }
        else if(input.compare("load -u")==0){
            int **check;
            string filename;
            cout<<"Enter the file name: ";
            getline(cin,filename);
            check = io.input(filename);
            if(check != NULL){
                sudoku = check;
                isSudoku = true;
                cout << "Sudoku loaded successfully!" << endl;
            }
        }
        else if(input.compare("load -k")==0){
            cout<<"Enter your puzzle: "<<endl;
            sudoku = io.stdInput();
            isSudoku= true;
            cout<<"Sudoku entered successfully!"<<endl;
        }
        else if(input.compare("ls -s")==0) {
            cout<<"DIR:/Solved"<<endl;
            cout<<".\n";
            io.listDit(0);
            cout<<".\n";
        }else if(input.compare("ls -st")==0) {
            cout<<"DIR:/SolvedTables"<<endl;
            cout<<".\n";
            io.listDit(1);
            cout<<".\n";
        }else if(input.compare("ls -u")==0) {
            cout<<"DIR:/Unsolved"<<endl;
            cout<<".\n";
            io.listDit(2);
            cout<<".\n";
        }else if(input.compare("print -s")==0) {
            string filename;
            cout<<"Enter the file name: ";
            getline(cin,filename);
            welcomeScreen();
            io.print(0,filename);

        }else if(input.compare("print -st")==0) {
            string filename;
            cout<<"Enter the file name: ";
            getline(cin,filename);
            welcomeScreen();
            io.print(1,filename);

        }
            else if(input.compare("cls")==0 || input.compare("back")==0 || input.compare("menu")==0){ welcomeScreen(); }
        else if(input.compare("exit")==0 || input.compare("quit")==0){ isRunning=false; }

    }
}

Menu::Menu() {
    welcomeScreen();
    mainMenu();
}

Menu::~Menu() {}

int Menu::exit() {
    return 0;
}



