//
//  VLODEModelProxy.h
//  VLODEModelSolverLibrary
//
//  Created by Jeffrey Varner on 11/10/13.
//  Copyright (c) 2013 Varnerlab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VLVector.h"

@interface VLODEModelProxy : NSObject
{
    @private
    float _start_time;
    float _stop_time;
    float _step_size;
    VLVector *_myStateVector;
}

// public properties -
@property (assign) float start_time;
@property (assign) float stop_time;
@property (assign) float step_size;
@property (strong) VLVector *myStateVector;

@end
