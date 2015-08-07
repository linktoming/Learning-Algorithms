/*
	matrix-chain multiplication problem: given a chain <A0, A1, ..., An-1> of n
	matrices, where for i = 0, 1, ..., n-1 matrix Ai has demension P[i]*P[i+1],
	fully parenthesize the product of A0A1...A(n-1) in a way that minimizes the
	number of scalar multiplications.
	Source: Introduction to Algorithms, 3e, Chapter 15.2
*/

#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include "../common/common-numeric.h"
int matrix_chain_multiplication(int *p, int p_lenth, int *multiplies, int *splits);
void print_optimal_parens(int *splits, int s_length, int i, int j);

int main(){

	int p[] = {30, 35, 15, 5, 10, 20, 25};
	int p_length = 7;
	int number_of_matrix = p_length - 1;

	int * multiplies = malloc (sizeof(int)* number_of_matrix * number_of_matrix);
	int * splits = malloc (sizeof(int) * number_of_matrix * number_of_matrix);
	int result = matrix_chain_multiplication (p, p_length, multiplies, splits); 
	for (int i = 0; i < number_of_matrix; i++){
		for (int j = i+1; j < number_of_matrix; j++)
		{
			// printed version index starting from 1
			printf("M[%i, %i] = %i\n", i+1, j+1, multiplies[i*number_of_matrix+j]);
		}
	}

	for (int i = 0; i < number_of_matrix; i++){
		for (int j = i+1; j < number_of_matrix; j++)
		{
			// printed version index starting from 1
			printf("S[%i, %i] = %i\n", i+1, j+1, splits[i*number_of_matrix+j]+1);
		}
	}

	print_optimal_parens (splits, number_of_matrix, 0, 5);
	free (multiplies);
	free (splits);
}

// The demension of multiplies & splits is p_length - 1
int matrix_chain_multiplication(int *p, int p_length, int *multiplies, int *splits){

	int n = p_length - 1;
	for (int i = 0; i < n; i ++){
		multiplies[i*n+i] = 0;
	}
	for (int length = 2; length <= n; length++){
		for (int i = 0; i<= n-length; i++){
			int j = i + length - 1;
			int minV = INT_MAX;
			for (int k = i; k < j ; k++){
				int current = multiplies[i*n+k] + multiplies[(k+1)*n+j] + p[i]*p[k+1]*p[j+1];
				if (current<minV){
					minV = current;
					multiplies[i*n+j] = current;
					splits[i*n+j] = k;
				}
			}

		}
	}

	return multiplies[n-1];

}

void print_optimal_parens(int *splits, int s_length, int i, int j){

	if (i==j){
		// printed version index starting from 1
		printf("A%i",i+1);
	}else{
		printf("(");
		print_optimal_parens(splits, s_length, i, splits[i*s_length+j]);
		print_optimal_parens(splits, s_length, splits[i*s_length+j]+1, j);
		printf(")");
	}
}