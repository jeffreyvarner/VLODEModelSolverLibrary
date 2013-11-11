//
//  VLODEModelProxy.m
//  VLODEModelSolverLibrary
//
//  Created by Jeffrey Varner on 11/10/13.
//  Copyright (c) 2013 Varnerlab. All rights reserved.
//

#import "VLODEModelProxy.h"

@interface VLODEModelProxy ()

-(void)setup;
-(void)cleanMyMemory;

@end

@implementation VLODEModelProxy


-(void)dealloc
{
    [self cleanMyMemory];
}

#pragma mark - private
-(void)setup
{
    
}

-(void)cleanMyMemory
{
    
}

@end
