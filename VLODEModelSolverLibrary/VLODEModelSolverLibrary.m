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

#pragma mark - public method
-(void)calculateNextStateForProblem:(VLODEModelProxy *)modelProxy
              withCompletionHandler:(VLSolverDidFinishStepCompletionHandler)completionHandler
{
    
    // ok, so if we do *not* have the model proxy -or- the completion handler,
    // then return
    if (modelProxy == nil || completionHandler == nil)
    {
        return;
    }
    
    
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
