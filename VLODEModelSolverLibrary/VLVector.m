//
//  VLVector.m
//  VLODEModelSolverLibrary
//
//  Created by Jeffrey Varner on 9/27/13.
//  Copyright (c) 2013 Varnerlab. All rights reserved.
//

#import "VLVector.h"

#define VECTOR_CAPACITY 100

@interface VLVector ()

// private methods -
-(void)setup;
-(void)cleanMyMemory;

@end

@implementation VLVector

// ststic accessor method -
+(VLVector *)vector
{
    // build -
    VLVector *local_vector = [[[self class] alloc] init];
    
    // configure -
    [local_vector setup];
    
    // return -
    return local_vector;
}

-(void)dealloc
{
    [self cleanMyMemory];
}

#pragma mark - public methods
-(void)clear
{
    // ok, we need to free the memory -
    free(_array);
    
    // reallocate the vector w/the initial capacity
    _array = (float *)malloc(VECTOR_CAPACITY*sizeof(float));
    
    // reset capcity -
    _current_array_capacity = VECTOR_CAPACITY;
    
    // reset current index -
    _current_array_index = 0;
}

-(NSInteger)size
{
    return (_current_array_index);
}

-(void)addValue:(float)value
{
    // are we going to go past the end of the array?
    if (_current_array_capacity>_current_array_index)
    {
        _array[_current_array_index] = value;
        _current_array_index++;
    }
    else
    {
        // ooops ... ok, we are out of room. We need to expand the array and then recall myself
        
        // update my capcity number -
        _current_array_capacity = _current_array_capacity + VECTOR_CAPACITY;
        _array = realloc(_array, _current_array_capacity*sizeof(float));
        
        // we should make sure we have the memory -
        assert(_array != NULL);
        
        // recall me -
        [self addValue:value];
    }
}

-(float)getValueAtIndex:(NSInteger)index
{
    float value = _array[index];
    return value;
}

-(void)setValue:(float)value atIndex:(NSInteger)index
{
    // is this index in the array
    _array[index] = value;
}

#pragma mark - private setup/clean up method
-(void)setup
{
    _current_array_index = 0;
    _current_array_capacity = VECTOR_CAPACITY;
    
    // build the vector -
    _array = (float *)malloc(VECTOR_CAPACITY*sizeof(float));
    assert(_array != NULL);
}

-(void)cleanMyMemory
{
    free(_array);
}

@end
