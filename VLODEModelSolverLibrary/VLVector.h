//
//  VLVector.h
//  VLODEModelSolverLibrary
//
//  Created by Jeffrey Varner on 9/27/13.
//  Copyright (c) 2013 Varnerlab. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VLVector : NSObject
{
    @private
    float *_array;
    NSInteger _current_array_index;
    NSInteger _current_array_capacity;
}

// static accesor methods
+(VLVector *)vector;

// methods to add, remove and numeric data to the vector
-(void)clear;
-(NSInteger)size;
-(void)addValue:(float)value;
-(float)getValueAtIndex:(NSInteger)index;
-(void)setValue:(float)value atIndex:(NSInteger)index;

@end
