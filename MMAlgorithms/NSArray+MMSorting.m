//
//  NSArray+MMSorting.m
//  MMAlgorithms
//
//  Created by Mingming Wang on 18/12/14.
//  Copyright (c) 2014 Mingming Wang. All rights reserved.
//

#import "NSArray+MMSorting.h"

@implementation NSArray (MMSorting)

-(NSArray *)mm_insertionSort{
    
    NSMutableArray *result = [NSMutableArray arrayWithArray:self];
    
    for (int i = 1; i < result.count; i++) {
        
        int j = i;
        
        while (j>0 && [[result objectAtIndex:j-1] compare:[result objectAtIndex:j]] == NSOrderedDescending) {
            
            [result exchangeObjectAtIndex:j withObjectAtIndex:j-1];
            j--;
        }
    }
    
    return [NSArray arrayWithArray:result];
}
@end
