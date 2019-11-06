#include <iostream>

using namespace std;

int maxlen(int a[], int n) {
    int i;
    //initialize count to one to account for first digit
    int count = 1;
    //count2 holds the length of the longest sequest of identical numbers
    int count2 = 1;
    //loop to traverse through the array
    for(i = 0;i < n-1 ;i++) {
        if(a[i] == a[i+1]) {
            count++;
        //check whether count2 is less than count
        } else if(count2 < count){
            count2 = count;
            //set count to 1 to account for next digit starting the count
            count = 1;
        } else {
        	//set count to 1 to account for next digit starting the count
        	count = 1;
		}
    }
    //final check of count2
    if(count2 < count) {
    	count2 = count;
	}
    return count2;
}

int main() {

    int a[] = {1,1,1,2,3,3,6,6,6,6,6};
    int n = sizeof(a)/sizeof(*a);
    cout << maxlen(a, n);
    return 0;
}
