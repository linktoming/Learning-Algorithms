//
//  NSArray+MMSorting.h
//  MMAlgorithms
//
//  Problem:    Sorting
//  Input:      A sequence of n keys a1,...,an.
//  Output:     The permutation (reordering) of the input sequence such that a′1 ≤ a′2 ≤ · · · ≤ a ′n − 1 ≤ a ′n .
//  Reference:  The Algorithm Design Manual
//
//  Created by Mingming Wang on 18/12/14.
//  Copyright (c) 2014 Mingming Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (MMSorting)
-(NSArray *)mm_insertionSort;
@end
