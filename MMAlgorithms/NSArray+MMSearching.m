//
//  NSArray+MMSearching.m
//  MMAlgorithms
//
//  Created by Mingming Wang on 28/12/14.
//  Copyright (c) 2014 Mingming Wang. All rights reserved.
//

#import "NSArray+MMSearching.h"

@implementation NSArray (MMSearching)
-(int)mm_binarySearch:(int)key{
    
    NSUInteger start = 0;
    NSUInteger end = self.count-1;
    
    while (start<end) {
        NSUInteger middle = (start + end)/2;
        if (key>[self[middle] intValue]) {
            start = middle + 1;
        }else{
            end = middle;
        }
    }
    
    if (start == end && [self[start] intValue]== key) {
        return (int)start;
    }else{
        return -1;
    }
}
@end
