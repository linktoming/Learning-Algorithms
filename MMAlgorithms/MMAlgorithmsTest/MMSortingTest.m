//
//  MMAlgorithmsTest.m
//  MMAlgorithmsTest
//
//  Created by Mingming Wang on 19/12/14.
//  Copyright (c) 2014 Mingming Wang. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "NSArray+MMSorting.h"
@interface MMAlgorithmsTest : XCTestCase

@end

@implementation MMAlgorithmsTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testInsertionSort {
    
    NSArray *numbers = @[@3,@123,@12,@102,@9,@10];
    NSArray *expected = @[@3,@9,@10,@12,@102,@123];
    NSArray *actual = [numbers mm_insertionSort] ;
    XCTAssertEqualObjects(expected, actual);
    
    numbers = @[@(-1),@(-10),@12,@(-12),@3,@2,@1,@100,@(-50)];
    expected = @[@(-50),@(-12),@(-10),@(-1),@1,@2,@3,@12,@100];
    actual = [numbers mm_insertionSort];
    
    XCTAssertEqualObjects(expected, actual);
}

@end
