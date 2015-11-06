/* The goal of this question is to produce, in the language of your choice,
an algorithm that given a list of integers returns the contiguous subset
with largest sum.

For example, if your algorithm is given the list:

 [-1, 4, -1, 5, 6, -13, 2]

Then your algorithm should return:

 [4, -1, 5, 6]

You may use any language you choose. Your algorithm will likely take the form
of a function, but that's up to you as well.
*/
#include <limits.h>
#include <stdlib.h>


int* getMaxSubArray (int* array, int size){
    
    int maxSum = INT_MIN;
    int* sums = malloc(size * sizeof(int));
    int begin=0, end=0;
    sums[0] = array[0];
    
    for (int i = 1; i < size; i++){
        
        if (array[i]>=sums[i-1]+array[i]){
            sums[i] = array[i];
             if (sums[i]>maxSum){
                begin = end = i;
                maxSum = sums[i];
            }
            
        }else{
           sums[i] = sums[i-1]+array[i];
           if (sums[i]>maxSum){
                end = i;
                maxSum = sums[i];
            }
        }
       
    }
    
    free(sums);
    int *result = malloc((end - begin+1)*sizeof(int));
    printf("%d\r",begin);
    printf("%d\r",end);
    printf("%d\r",maxSum);
    for (int i = 0; i < end-begin+1; i++){
        result[i] = array[begin+i];
    }
    return result;
}

int main(){
    int a[] = {-1, 4, -1, 5, 6, -13, 2};
    int *result = getMaxSubArray(a, 7);
    
    // return 1;
}
