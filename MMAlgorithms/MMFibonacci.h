//
//  MMFibonacci.h
//  MMAlgorithms
//
//  Created by Mingming Wang on 19/12/14.
//  Copyright (c) 2014 Mingming Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MMFibonacci : NSObject
+(int)fibonacciRecursive:(int)n;
+(int)fibonacciWithCaching:(int)n;
+(int)fibonacciDP:(int)n;
+(int)fibonacciDPUltimate:(int)n;
@end
