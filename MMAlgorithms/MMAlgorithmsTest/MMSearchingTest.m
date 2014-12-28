//
//  MMSearchingTest.m
//  MMAlgorithms
//
//  Created by Mingming Wang on 28/12/14.
//  Copyright (c) 2014 Mingming Wang. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "NSArray+MMSearching.h"
@interface MMSearchingTest : XCTestCase{
    NSArray *sortedIntArray;
}

@end

@implementation MMSearchingTest

- (void)setUp {
    [super setUp];
    sortedIntArray = @[@(0),@(2),@(3),@(4),@(4),@(6),@(6),@(9),@(100)];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    sortedIntArray = nil;
    [super tearDown];
}

- (void)testThatItReturnsIndexForAGivenExistingKey {
    // This is an example of a functional test case.
    XCTAssertEqual(3, [sortedIntArray mm_binarySearch:4]);
}
- (void)testThatItReturnsNonForAGivenExistingKey {
    // This is an example of a functional test case.
    XCTAssertEqual(-1, [sortedIntArray mm_binarySearch:5]);
}
@end
