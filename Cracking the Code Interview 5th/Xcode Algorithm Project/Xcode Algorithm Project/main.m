//
//  main.m
//  Xcode Algorithm Project
//
//  Created by Mingming Wang on 3/6/14.
//  Copyright (c) 2014 NA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+MMAddon.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *string;
        NSString *stringA;
        NSString *stringB;
        
        string = @"Helo.";
        NSLog(@"%@ %@ unique characters.",string,[string mm_hasUniqueCharacters]?@"has":@"doesn't have");
        
        stringA = @"ldc- ";
        stringB = @"l- cd";
        NSLog(@"%@ %@ permutation of %@.",
              stringA,
              [NSString mm_checkPermutationsBetween:stringA and:stringB]?@"is a":@"is not a",
              stringB);
        
        string = @"Hello World, today is a good day";
        NSLog(@"%@",[string mm_urlEncodingWhiteSpace]);

        string = @"aabcccccaaa";
        NSLog(@"%@",[string mm_compressString]);
        
        //(e.g.,"waterbottle"is a rotation of"erbottlewat").
        
        stringA = @"waterbottle";
        stringB = @"erbottlewat";
        
        NSLog(@"%@ %@ a rotation of %@ ",stringA,[string mm_isRotationOfString:stringB]?@"is":@"is not",stringB);
    }
    return 0;
}

