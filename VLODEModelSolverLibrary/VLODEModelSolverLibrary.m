//
//  VLODEModelSolverLibrary.m
//  VLODEModelSolverLibrary
//
//  Created by Jeffrey Varner on 9/27/13.
//  Copyright (c) 2013 Varnerlab. All rights reserved.
//

#import "VLODEModelSolverLibrary.h"

@interface VLODEModelSolverLibrary ()

// private methods
-(void)setup;
-(void)cleanMyMemory;

@end

@implementation VLODEModelSolverLibrary


+(VLODEModelSolverLibrary *)buildSolverInstance
{
    VLODEModelSolverLibrary *lib_instance = [[[self class] alloc] init];
    
    // call setup -
    [lib_instance setup];
    
    // return -
    return lib_instance;
}

-(void)dealloc
{
    [self cleanMyMemory];
}

#pragma mark - problem setup
-(void)setup
{
    NSLog(@"Solver instance just called me ...");
}

-(void)cleanMyMemory
{
    
}

@end
