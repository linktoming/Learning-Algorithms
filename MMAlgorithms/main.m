//
//  main.m
//  MMAlgorithms
//
//  Created by Mingming Wang on 18/12/14.
//  Copyright (c) 2014 Mingming Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <limits.h>

int main(int argc, const char * argv[]) {
    
    NSLog(@"Primitive sizes:");
    NSLog(@"The size of a char is: %lu.", sizeof(char));
    NSLog(@"The size of short is: %lu.", sizeof(short));
    NSLog(@"The size of int is: %lu.", sizeof(int));
    NSLog(@"The size of long is: %lu.", sizeof(long));
    NSLog(@"The size of long long is: %lu.", sizeof(long long));
    NSLog(@"The size of a unsigned char is: %lu.", sizeof(unsigned char));
    NSLog(@"The size of unsigned short is: %lu.", sizeof(unsigned short));
    NSLog(@"The size of unsigned int is: %lu.", sizeof(unsigned int));
    NSLog(@"The size of unsigned long is: %lu.", sizeof(unsigned long));
    NSLog(@"The size of unsigned long long is: %lu.", sizeof(unsigned long long));
    NSLog(@"The size of a float is: %lu.", sizeof(float));
    NSLog(@"The size of a double is %lu.", sizeof(double));
    
    NSLog(@"Ranges:");
    NSLog(@"CHAR_MIN:   %c",   CHAR_MIN);
    NSLog(@"CHAR_MAX:   %c",   CHAR_MAX);
    NSLog(@"SHRT_MIN:   %i",  SHRT_MIN);    // signed short int
    NSLog(@"SHRT_MAX:   %i",  SHRT_MAX);
    NSLog(@"INT_MIN:    %i",   214748364*10+8);
    NSLog(@"INT_MAX:    %i",   INT_MAX);
    NSLog(@"LONG_MIN:   %li",  LONG_MIN);    // signed long int
    NSLog(@"LONG_MAX:   %li",  LONG_MAX);
    NSLog(@"ULONG_MAX:  %lu",  ULONG_MAX);   // unsigned long int
    NSLog(@"LLONG_MIN:  %lli", LLONG_MIN);   // signed long long int
    NSLog(@"LLONG_MAX:  %lli", LLONG_MAX);
    NSLog(@"ULLONG_MAX: %llu", ULLONG_MAX);  // unsigned long long int
    return 0;
}