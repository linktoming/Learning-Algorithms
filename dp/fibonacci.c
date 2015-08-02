/*
Print Fibonacci using DP
Source: Introduction to Algorithms, 3e, Chapter 15.1, Excercise 15.1-5
*/
#include <stdio.h>
// index start from 1
void print_fibonacci(int index);

int main(){
    
    print_fibonacci (10);
}
void print_fibonacci(int index){
    
    if (index <= 0){
        return;
    }
    int resultA, resultB;
    resultA = 0;
    printf ("%d",resultA);
    if (index <=1){
        return;
    }
    resultB = 1;
    printf (" ,%d",resultB);
    if (index <=2){
        return;
    }
    for (int i = 3; i <= index; i++) {
        
        int current = resultA + resultB;
        printf (" ,%d", current);
        resultA = resultB;
        resultB = current;
    }
    printf ("\n");
}