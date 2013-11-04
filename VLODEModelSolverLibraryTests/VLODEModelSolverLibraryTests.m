//
//  VLODEModelSolverLibraryTests.m
//  VLODEModelSolverLibraryTests
//
//  Created by Jeffrey Varner on 9/27/13.
//  Copyright (c) 2013 Varnerlab. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "VLVector.h"

@interface VLODEModelSolverLibraryTests : XCTestCase

@end

@implementation VLODEModelSolverLibraryTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

-(void)testBuildVLVector
{
    // build the vector -
    VLVector *vector_instance = [VLVector vector];
    XCTAssertNotNil(vector_instance, @"Should not be nil. Failed to initialize.");
    NSInteger number_of_elements = [vector_instance size];
    XCTAssertTrue(number_of_elements == 0, @"Number of elements should equal zero.");
}

-(void)testVLVectorAddValue
{
    VLVector *vector_instance = [VLVector vector];
    
    // generate a random vector of floats -
    NSInteger NUMBER_OF_FLOATS = 200;
    for (NSUInteger index = 0;index<NUMBER_OF_FLOATS;index++)
    {
        float randomNum = ((float)rand() / RAND_MAX) * 5;
        [vector_instance addValue:randomNum];
    }
    
    // can we get these numbers back?
    for (NSUInteger index = 0;index<NUMBER_OF_FLOATS;index++)
    {
        NSLog(@"value = %f",[vector_instance getValueAtIndex:index]);
    }
}

-(void)testVLVectorClear
{
    VLVector *vector_instance = [VLVector vector];
    
    // generate a random vector of floats -
    NSInteger NUMBER_OF_FLOATS = 213;
    for (NSUInteger index = 0;index<NUMBER_OF_FLOATS;index++)
    {
        float randomNum = ((float)rand() / RAND_MAX) * 5;
        [vector_instance addValue:randomNum];
    }
    
    // how many elements do we have?
    NSInteger array_size = [vector_instance size];
    XCTAssert(array_size == NUMBER_OF_FLOATS, @"Size is *not* correct");
    
    // clear -
    [vector_instance clear];
    array_size = [vector_instance size];
    XCTAssert(array_size == 0, @"Size is *not* correct");
}

@end
