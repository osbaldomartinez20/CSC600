#include <iostream>

using namespace std;

int reduce(int a[], int& n) {
    int i;
    int num1 = -1000000000;
    int num2 = -1000000000;
    int num3 = -1000000000;

    for (i = 0; i < n; i++) {
        if(num1 < a[i]) {
            num3 = num2;
            num2 = num1;
            num1 = a[i];
        } else if(num2 < a[i] && a[i] < num1) {
        	num3 = num2;
        	num2 = a[i];
		} else if(num3 < a[i] && a[i] < num2) {
			num3 = a[i];
		}
    }

    int count = 0;
    for(i = 0; i < n; i++) {
        if(a[i] < num3) {
            a[count] = a[i];
            count++;
        }
    }
	n = count;
    
}

int main() {

    int a[] = {8,1,1,1,2,5,3,7,7,8,6,4};
    int n = sizeof(a)/sizeof(*a);
    reduce(a, n);
    for(int i = 0; i < n; i++) {
		cout << a[i] << " ";
    }
    return 0;
}
