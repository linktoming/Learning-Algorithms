/*
Given a price table for rod with different length and the lengh of a rod, return the max value that can be get from cutting 
the rod in pieces or no cutting at all if the price as a whole is the max. The cutting is free.
Source: Introduction to Algorithms, 3e, Chapter 15.1
*/
#include <stdio.h>
int max(int num1, int num2) 
{
   /* local variable declaration */
   int result;
 
   if (num1 > num2)
      result = num1;
   else
      result = num2;
 
   return result; 
}
int cut_rod (int* p, int size_p, int rod_length){
    
    if (rod_length == 0){
        
        return 0;
    }
    int maxP = 0;
    for (int i = 0; i<rod_length; i++){
        maxP = max(p[i] + cut_rod(p, size_p, rod_length-i-1), maxP);
    }
    return maxP;
}

int main() {
    
    int p[] = {1,5,8,9,10,17,17,20,24,30}; 
    for (int i = 1; i<11; i++){
         printf("The result of %d is %d\n", i, cut_rod(p, 10, i));
    }
   
}

