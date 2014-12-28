//
//  NSArray+MMSearching.h
//  MMAlgorithms
//
//  Created by Mingming Wang on 28/12/14.
//  Copyright (c) 2014 Mingming Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (MMSearching)
// Assume the elements in the array are int/integers
// and are already sorted.
-(int)mm_binarySearch:(int)key;
@end
