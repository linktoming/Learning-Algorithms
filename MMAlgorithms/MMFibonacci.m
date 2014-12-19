//
//  MMFibonacci.m
//  MMAlgorithms
//
//  Created by Mingming Wang on 19/12/14.
//  Copyright (c) 2014 Mingming Wang. All rights reserved.
//

#import "MMFibonacci.h"

@implementation MMFibonacci
+(int)fibonacciRecursive:(int) n{
    
    if (n == 0 || n == 1) {
        return n;
    }
    
    return [self fibonacciRecursive:n-1] + [self fibonacciRecursive:n-2];
}
+(int)fibonacciWithCaching:(int)n{
    
    int cachedResult[n+1];
    cachedResult[0] = 0;
    cachedResult[1] = 1;
    
    for (int i = 2; i<n+1; i++) {
        
        cachedResult[i] = -1;
    }
    
    return [self fibonacciWithCachingRecursive:cachedResult number:n];

}

+(int)fibonacciWithCachingRecursive:(int [])cachedResult number:(int)number{
    
    if (cachedResult[number] != -1) {
        
        return cachedResult[number];
    }
    
    cachedResult[number] = [self fibonacciWithCachingRecursive:cachedResult number:number-1] + [self fibonacciWithCachingRecursive:cachedResult number:number-2];
    
    return cachedResult[number];
}

+(int)fibonacciDP:(int)n{
    
    int cachedResult[n+1];
    cachedResult[0] = 0;
    cachedResult[1] = 1;
    
    for (int i = 2; i<= n; i++) {
        
        cachedResult[i] = cachedResult[i-1]+cachedResult[i-2];
    }
    
    return cachedResult[n];

}

+(int)fibonacciDPUltimate:(int)n{
    
    if (n == 0) {
        return 0;
    }
    int lastTwo = 0, lastOne = 1;
    
    for (int i = 2; i <= n; i++) {
        int temp = lastTwo + lastOne;
        lastTwo = lastOne;
        lastOne = temp;
    }
    return lastOne;
}
@end
