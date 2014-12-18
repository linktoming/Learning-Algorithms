//
//  NSString+MMAddon.m
//  Xcode Algorithm Project
//
//  Created by Mingming Wang on 3/6/14.
//  Copyright (c) 2014 NA. All rights reserved.
//

#import "NSString+MMAddon.h"

@implementation NSString (MMAddon)

-(BOOL)mm_hasUniqueCharacters{
    
    if (self.length == 0) {
        // In need of three-valued logic and return
        // "undefined".
        return YES;
    }
    
    NSMutableDictionary *characterCounts = [NSMutableDictionary new];
    
    for (int i = 0; i<self.length; i++) {
        
        NSString *character = [self substringWithRange:NSMakeRange(i, 1)];
        id count = [characterCounts valueForKey:character];
        if (count==nil) {
            [characterCounts setValue:@(1) forKey:character];
        }else{
            return NO;
        }
        
    }
    
    return YES;
}

+(BOOL)mm_checkPermutationsBetween:(NSString *)stringA
                               and:(NSString *)stringB{
    
    if (stringA.length !=stringB.length) {
        return NO;
    }
    long sum = 0;
    for (int i = 0; i<stringA.length; i++) {
        
//        NSLog(@"%hu",[stringA characterAtIndex:i]);
//        NSLog(@"%hu",[stringB characterAtIndex:i]);
        sum += [stringA characterAtIndex:i] - [stringB characterAtIndex:i];
       
    }
    return sum == 0;
}

-(NSString *)mm_urlEncodingWhiteSpace{
    
    return [self stringByReplacingOccurrencesOfString:@" " withString:@"%20"];
}

-(NSString *)mm_compressString{
    
    NSMutableArray *countArray = [NSMutableArray new];
    
    for (int i = 0; i<self.length; i++) {
        NSString * character = [self substringWithRange:NSMakeRange(i, 1)];
        if ([countArray count]==0) {
            
            [countArray addObject:character];
            [countArray addObject:@(1)];
            
        }else{
            
            if ([[countArray objectAtIndex:[countArray count]-2] isEqualToString:character]) {
                
                NSNumber *count = [countArray lastObject];
                int newCount = count.intValue+1;
                [countArray removeLastObject];
                [countArray addObject:@(newCount)];
            }else{
                [countArray addObject:character];
                [countArray addObject:@(1)];
            }
        }
    }
    NSString *newString = [countArray componentsJoinedByString:nil];
    
    return newString.length<self.length?newString:self;
}
-(BOOL)mm_isRotationOfString:(NSString *)aString{
    
    if (aString.length !=self.length) {
        return NO;
    }
    NSUInteger length = aString.length;
    for (int i = 0; i< length; i++) {
        
        if ([self characterAtIndex:i]!=[aString characterAtIndex:length-1-i]) {
            
            return NO;
        }
    }
    return YES;
}
@end
