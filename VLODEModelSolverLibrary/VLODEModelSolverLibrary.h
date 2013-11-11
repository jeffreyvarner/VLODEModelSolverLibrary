//
//  VLODEModelSolverLibrary.h
//  VLODEModelSolverLibrary
//
//  Created by Jeffrey Varner on 9/27/13.
//  Copyright (c) 2013 Varnerlab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VLODEModelProxy.h"
#import "VLVector.h"

typedef void (^VLSolverDidFinishStepCompletionHandler)(float,VLVector*);

@interface VLODEModelSolverLibrary : NSObject
{
    @private
    VLODEModelProxy *_myModelProxy;
}

// public method
+(VLODEModelSolverLibrary *)buildSolverInstance;

// stepping routine -
-(void)calculateNextStateForProblem:(VLODEModelProxy *)modelProxy withCompletionHandler:(VLSolverDidFinishStepCompletionHandler)completionHandler;

@end
