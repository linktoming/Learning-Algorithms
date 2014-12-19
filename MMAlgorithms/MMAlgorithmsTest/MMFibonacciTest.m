//
//  MMFibonacciTest.m
//  MMAlgorithms
//
//  Created by Mingming Wang on 19/12/14.
//  Copyright (c) 2014 Mingming Wang. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "MMFibonacci.h"
@interface MMFibonacciTest : XCTestCase

@end

@implementation MMFibonacciTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testFibonacci {


    int i[]={0,1,1,2,3, 5, 8, 13, 21, 34, 55, 89, 144};
    
    for (int j = 0; j < 13; j++) {
        
        XCTAssertEqual(i[j], [MMFibonacci fibonacciRecursive:j]);
        XCTAssertEqual(i[j], [MMFibonacci fibonacciWithCaching:j]);
        XCTAssertEqual(i[j], [MMFibonacci fibonacciDP:j]);
        XCTAssertEqual(i[j], [MMFibonacci fibonacciDPUltimate:j]);
    }

}

@end
