/*
Given a price table for rod with different length and the lengh of a rod, return the max value that can be get from cutting 
the rod in pieces or no cutting at all if the price as a whole is the max. The cutting is free.
Source: Introduction to Algorithms, 3e, Chapter 15.1
*/
#include <stdio.h>
#include <stdlib.h>

// Default Recursive Solution Without DP
int cut_rod (int* p, int size_p, int rod_length);
// Top-down with menoization DP
int memoized_cut_rod(int *p, int size_p, int rod_length);
int memoized_cut_rod_aux(int *p, int size_p, int rod_length, int *result);
// Bottom-up DP
int bottom_up_cut_rod(int *p, int size_p, int rod_length)
int max(int num1, int num2);

int main() {
    
    int p[] = {1,5,8,9,10,17,17,20,24,30}; 
    for (int i = 1; i<11; i++){
         printf("The result of %d is recursive: %d, memoized: %d, top down mp: %d\n", i, cut_rod(p, 10, i), memoized_cut_rod(p, 10, i),0);
    }
   
}

int cut_rod (int* p, int size_p, int rod_length){
    
    if (rod_length == 0){
        return 0;
    }
    int maxP = -1;
    for (int i = 1; i<rod_length+1; i++){
        maxP = max(p[i-1] + cut_rod(p, size_p, rod_length-i), maxP);
    }
    return maxP;
}

int memoized_cut_rod(int *p, int size_p, int rod_length){
    
    int *result = malloc ((rod_length+1)*sizeof(int));
    result[0] = 0;
    for (int i = 1; i < rod_length+1; i++) {
        result[i] = -1;
    }
    int maxP = memoized_cut_rod_aux(p, size_p, rod_length, result);
    free (result);
    return maxP;
}

int memoized_cut_rod_aux(int *p, int size_p, int rod_length, int *result){
    
    if (rod_length == 0){
        return 0;
    }
    if (result[rod_length] != -1){
        
        return result[rod_length];
    }
    int maxP = -1;
    for (int i = 1; i < rod_length+1; i++) {
        
        maxP = max (maxP, p[i-1]+memoized_cut_rod_aux(p, size_p, rod_length-i, result));
    }
    result[rod_length] = maxP;
    
    return maxP;   
}

int bottom_up_cut_rod(int *p, int size_p, int rod_length){
    
    int *result = malloc ((rod_length+1) * sizeof (int));
    result[0] = 1;
    int maxP = -1;
    for (int i = 1; i < rod_length+1; i++) {
        
        maxP = max(maxP, p[i-1]+result[i-1]);
        
    }
    return maxP;
}

int max(int num1, int num2) 
{
  return num1 > num2 ? num1 : num2;
  
}
