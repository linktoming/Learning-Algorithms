//
//  NSString+MMAddon.h
//  Xcode Algorithm Project
//
//  Created by Mingming Wang on 3/6/14.
//  Copyright (c) 2014 NA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (MMAddon)

/* 
 1.1 Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional data structures?
 */
-(BOOL)mm_hasUniqueCharacters;
/*
 1.3 Given two strings, write a method to decide if one is a permutation of the other.
 */
+(BOOL)mm_checkPermutationsBetween:(NSString *)stringA
                               and:(NSString *)stringB;

/*
 1.4 Write a method to replace all spaces in a string with'%20'. You may assume that the string has sufficient space at the end of the string to hold the additional characters, and that you are given the "true" length of the string. (Note: if implementing in Java, please use a character array so that you can perform this opera- tion in place.)
 
 EXAMPLE
 
 Input: "Mr John Smith
 Output: "Mr%20Dohn%20Smith"
 */
-(NSString *)mm_urlEncodingWhiteSpace;

/*
 1.5 Implement a method to perform basic string compression using the counts of repeated characters. For example, the string aabcccccaaa would become a2b1c5a3. If the "compressed" string would not become smaller than the original string, your method should return the original string.
 */
-(NSString *)mm_compressString;
/*
 1.8 Assume you have a method isSubstring which checks if one word is a substring of another. Given two strings, s1 and s2, write code to check if s2 is a rotation of s1 using only one call to isSubstring (e.g.,"waterbottle"is a rotation of"erbottlewat").
 */
-(BOOL)mm_isRotationOfString:(NSString *)aString;
@end
