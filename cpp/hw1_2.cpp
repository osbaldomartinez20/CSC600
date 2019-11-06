#include <iostream>
#include <cmath>
#include <iomanip>

using namespace std;

int main() {
	{//segment for question 1
	cout << "Question 1: " << endl;
    unsigned int a = 4294967290;
    unsigned int b = 12;
    cout << a+b << endl;
    cout << endl;
	}
    
    {//segment for question 2
    cout << "Question 2: " << endl;
    int a = 2147483647;
    int b = 10;
    cout << a+b << endl;
    cout << endl;
	}
	
    {//segment for question 3
    cout << "Question 3: " << endl;
    int a = -2147483600;
    int b = -1250;
    cout << a+b << endl;
    cout << endl;
	}
	
    {//segment for question 4
    cout << "Question 4: " << endl;
    cout << "1 is true. 0 is false" << endl;
    double x = 0.0000000000000001;
    bool t = 1. == (x+1.);
    cout << t << endl;
    cout << endl;
	}
	
    {//segment for question 5
    cout << "Question 5: " << endl;
    cout << "1 is true. 0 is false" << endl;
    double a = 2.145;
    double b = 1.00004;
    double c = 0.00000456;
    bool t = (a+b)+c != (c+b)+a;
    cout << t << endl;
    cout << endl;
	}
	
    {//segment for question 6
    cout << "Question 6: " << endl;
    double result1 = pow(-2.,3);
    double result2 = pow(-2.,3.0);
    double result3 = pow(-2.,3.00000000001);
    cout << result1 << ", " << result2 << ", " << result3 << endl;
    cout << endl;
	}
	
    {//segment for question 7
    cout << "Question 7: " << endl;
    cout << sizeof(1.) << ", " << sizeof(1.F) << ", " << sizeof(1) << ", "
    	<< sizeof('1') << ", " << sizeof("1") << endl;
    cout << endl;
	}
	
	{//segment for question 8
	cout << "Question 8: " << endl;
	cout << setprecision(20)  << 1./3. << endl;
	cout << "The correct digits are: 3333333333333333, the incorrect digits are: 1483" << endl;
	cout << endl;
	}
	
	{//segment for qustion 9
	cout << "Question 9: " << endl;
	for (int i = 32; i <= 63; i++) {
		char x = i;
		char y = i + 32;
		char z = i + 64;
		cout << i<< " "<< x<< "\t"<< i+32<< " "<< y<< "\t"<< i+64<< " "<< z<< endl;
	}
	cout << endl;
	}
	
	{//segment for question 10
	cout << "Question 10: " << endl;
    double a = 2.;
    double x = 1;
    //use ten steps because equation can arrive at approximate answer quickly
    for (int i = 0; i < 10; i++){
        x = (x+(a/x))/2;
    }
    cout << x << endl;
	}
	
    return 0;
}
