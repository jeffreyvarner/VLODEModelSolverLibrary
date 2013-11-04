//
//  VLMatrix.m
//  VLODEModelSolverLibrary
//
//  Created by Jeffrey Varner on 9/27/13.
//  Copyright (c) 2013 Varnerlab. All rights reserved.
//

#import "VLMatrix.h"

@interface VLMatrix ()

// private methods -
-(void)setup;
-(void)cleanMyMemory;

@end

@implementation VLMatrix

// ststic accessor method -
+(VLMatrix *)matrix
{
    // build -
    VLMatrix *local_matrix = [[[self class] alloc] init];
    
    // configure -
    [local_matrix setup];
    
    // return -
    return local_matrix;
}

#pragma mark - private setup/clean up method
-(void)setup
{
   
}

-(void)cleanMyMemory
{
    
}


@end
