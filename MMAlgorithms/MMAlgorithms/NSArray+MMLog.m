//
//  NSArray+MMLog.m
//  MMAlgorithms
//
//  Created by Mingming Wang on 18/12/14.
//  Copyright (c) 2014 Mingming Wang. All rights reserved.
//

#import "NSArray+MMLog.h"

@implementation NSArray (MMLog)
- (void)mm_print{
    
    NSMutableArray *output = [NSMutableArray array];
    
    for (id item in self) {
        
        [output addObject:[NSString stringWithFormat:@"%@",item]];
    }
    NSLog(@"%@",[output componentsJoinedByString:@","]);
}
@end
