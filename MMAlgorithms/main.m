//
//  main.m
//  MMAlgorithms
//
//  Created by Mingming Wang on 18/12/14.
//  Copyright (c) 2014 Mingming Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSArray+MMSorting.h"
#import "NSArray+MMLog.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSArray *numbers = @[@3,@123,@12,@102,@9,@10];
        
        NSMutableArray *result = [numbers mm_insertionSort] ;
        
        [result mm_print];
        
    }
    
    return 0;
}