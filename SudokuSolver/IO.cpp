#include <vector>
#include <sstream>
#include "IO.h"
#include "InvalidInputException.h"

void IO::outputWithTable(int sudoku[9][9], string fileName) {
    ofstream file;
    if (fileName.compare("") == 0) {
        string temp;
        getTime(fileName);
        temp = "./SolvedTables/" + fileName;
        file.open(temp.c_str());
    } else {
        string temp;
        fileName.append(".txt");
        temp = "./SolvedTables/" + fileName;
        file.open(temp.c_str());
    }
    for (int i = 0; i < 9; ++i) {
        file << " ";
        for (int j = 0; j < 9; ++j) {
            if (sudoku[i][j] != 0) {
                if (j == 2 || j == 5) {
                    file << sudoku[i][j] << " █ ";
                } else {
                    if (j < 8) { file << sudoku[i][j] << " | "; }
                    else { file << sudoku[i][j]; }
                }
            } else {
                if (j == 2 || j == 5) {
                    file << "  █ ";
                } else {
                    if (j < 8) { file << "  | "; }
                }
            }
        }
        file << endl;
        if (i == 2 || i == 5) {
            file << "▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄";
        } else {
            if (i < 8) { file << "-----------█-----------█------------"; }
        }
        file << endl;
    }

    file.close();
}

void IO::getTime(string &fileName) {
    time_t now = time(0);
    ostringstream convert;
    tm *ltm = localtime(&now);
    int year = 1900 + ltm->tm_year;
    int month = 1 + ltm->tm_mon;
    int day = ltm->tm_mday;
    int hour = ltm->tm_hour;
    int min = ltm->tm_min;
    convert << year;
    string tempYear = convert.str();
    convert.str("");
    convert << month;
    string tempMonth = convert.str();
    convert.str("");
    convert << day;
    string tempDay = convert.str();
    convert.str("");
    convert << hour;
    string tempHour = convert.str();
    convert.str("");
    convert << min;
    string tempMin = convert.str();
    fileName.append(tempDay);
    fileName.append("-");
    fileName.append(tempMonth);
    fileName.append("-");
    fileName.append(tempYear);
    fileName.append(",");
    if (hour < 9) { fileName.append(" 0"); }
    fileName.append(tempHour);
    fileName.append(";");
    if (min < 9) { fileName.append("0"); }
    fileName.append(tempMin);
    fileName.append(".txt");
}

void IO::output(int sudoku[9][9], string fileName) {
    ofstream file;
    if (fileName.compare("") == 0) {
        string temp;
        getTime(fileName);
        temp = "./Solved/" + fileName;
        file.open(temp.c_str());
    } else {
        string temp;
        fileName.append(".txt");
        temp = "./Solved/" + fileName;
        file.open(temp.c_str());
    }
    for (int i = 0; i < 9; ++i) {
        for (int j = 0; j < 9; ++j) {
            file << sudoku[i][j] << " ";
        }
        file << endl;
    }
    file.close();
}

int **IO::input(string fileName) {
    vector<int> numbers;
    string temp = "./Unsolved/" + fileName + ".txt";
    ifstream file(temp.c_str());

    int **sudoku = new int *[9];
    for (int i = 0; i < 9; ++i) {
        sudoku[i] = new int[9];
    }
    int i = 0;
    if (file.good()) {
        while (file >> i) {
            numbers.push_back(i);
        }

        int index = 0;
        for (int k = 0; k < 9; ++k) {
            for (int j = 0; j < 9; ++j) {
                sudoku[k][j] = numbers[index];
                index++;
            }
        }
    } else {
        /////////////////exc

        cout << "There's no such a file." << endl;
        return NULL;
    }
    file.close();

    return sudoku;

}

IO::IO() {}

IO::~IO() {

}

int **IO::stdInput() {
    int **sudoku = new int *[9];
    int temp[9][9];
    for (int i = 0; i < 9; ++i) {
        sudoku[i] = new int[9];
    }
    char check;
    for (int j = 0; j < 9; ++j) {
        for (int i = 0; i < 9; ++i) {
            cin >> check;
            if (check < 58 && check > 47) {
                sudoku[j][i] = check;
            } else {
                /////////////////exc

                cout << "Wrong input, try again";
                check = 'A';
                i--;
            }

        }
    }
    return sudoku;
}

void IO::listDit(int dirId) {
    DIR *direcotry;
    struct dirent *dir;
    switch (dirId) {
        case 0:
            direcotry = opendir("./Solved");
            break;
        case 1:
            direcotry = opendir("./SolvedTables");
            break;
        case 2:
            direcotry = opendir("./Unsolved");
            break;
        default:
            cout << "problem" << endl;
            break;
    }
    if (direcotry) {
        while ((dir = readdir(direcotry)) != NULL) {
            if (dir->d_type == DT_REG) {
                printf("%s\n", dir->d_name);
            }
        }
        closedir(direcotry);
    }
}

void IO::print(int folderId, string fileName) {
    string line;
    string temp;
    switch (folderId) {
        case 0:
            temp = "./Solved/" + fileName + ".txt";
            break;
        case 1:
            temp = "./SolvedTables/" + fileName + ".txt";
            break;
        default:
            cout << "Problem" << endl;
            break;
    }

    ifstream file(temp.c_str());

    if (file.good()) {
        if (file.is_open()) {
            while (getline(file, line)) {
                cout << line << '\n';
            }
            file.close();
            cout<<"Done!\n";
        }
    }else{
        cout<<"Wrong file name!\n";
    }


}



