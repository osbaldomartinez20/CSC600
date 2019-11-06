#include <iostream>
#include <string>

using namespace std;

string twos_twoa_threes = "  @@   ";
string ones_threea_threes = " @@@   ";
string sixa_ones = "@@@@@@ ";
string sevens = "@@@@@@@";
string fives_twoa = "     @@";
string fours_twoa_ones = "    @@ ";
string threes_twoa_twos = "   @@  ";
string ones_twoa_fours = " @@    ";
string twoa_fives = "@@     ";
string ones_fivea_ones = " @@@@@ ";
string twoa_threes_twoa = "@@   @@";
                            
/*
           
*/

string BigInt(int n) {
    int num3 = n%10;
    n = n/10;
    int num2 = n%10;
    n = n/10;
    int num1 = n;
    int i;
    string one = "";
    string two = "";
    string three = "";
    string four = "";
    string five = "";
    string six = "";
    string seven = "";
    for (i = 0; i < 7; i++) {
    	switch (i) {
        case 0:
            switch (num1) {
            case 0:
                one += ones_fivea_ones;
                one += "  "; 
                break;
            case 7:
                one += sevens;
                one += "  "; 
            default:
                break;
            }
            switch (num2) {
            case 0:
                one += ones_fivea_ones;
                one += "  "; 
                break;
            case 7:
                one += sevens;
                one += "  "; 
            default:
                break;
            }
            switch (num3) {
            case 0:
                one += ones_fivea_ones;
                one += "  "; 
                break;
            case 7:
                one += sevens;
                one += "  "; 
            default:
                break;
            }
            break;
        case 1:
            switch (num1) {
            case 0:
                two += twoa_threes_twoa; 
                two += "  "; 
                break;
            case 7:
                two += fives_twoa;
                two += "  "; 
            default:
                break;
            }
            switch (num2) {
            case 0:
                two += twoa_threes_twoa; 
                two += "  "; 
                break;
            case 7:
                two += fives_twoa;
                two += "  "; 
            default:
                break;
            }
            switch (num3) {
            case 0:
                two += twoa_threes_twoa; 
                two += "  "; 
                break;
            case 7:
                two += fives_twoa;
                two += "  "; 
            default:
                break;
            }
            break;
        default:
            break;
        }
	}
    
    for (i = 0; i < 7; i++) {
        switch (i)
        {
        case 0:
            cout << one << endl;
            break;
        case 1:
            cout << two << endl;
            break;
        
        default:
            break;
        }
    }
    
    return "zero";
}

int main() {

    cout << BigInt(700) << endl;
    return 0;
}
