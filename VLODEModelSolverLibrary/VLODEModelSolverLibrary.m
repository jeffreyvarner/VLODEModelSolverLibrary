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
    
    // get problem specific information from the model proxy -
    float local_start_time = modelProxy.start_time;
    float local_stop_time = modelProxy.stop_time;
    float local_step_size = modelProxy.step_size;
    float current_time = local_start_time;
    VLVector *local_state_vector = modelProxy.myStateVector;
    
    // main simulation loop -
    BOOL LOOP_FLAG = YES;
    while (LOOP_FLAG)
    {
        // update state
        // ...
        
        // update time -
        current_time = current_time + local_step_size;
        
        // call the completion handler -
        completionHandler(current_time,local_state_vector);
        
        // should we go around again?
        if (current_time>=local_stop_time)
        {
            LOOP_FLAG = NO;
        }
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
