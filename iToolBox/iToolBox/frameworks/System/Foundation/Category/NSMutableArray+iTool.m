//
//  NSMutableArray+iTool.m
//  iToolBox
//
//  Created by liuhongnian on 15-1-17.
//  Copyright (c) 2015年 liuhongnian. All rights reserved.
//

#import "NSMutableArray+iTool.h"

@implementation NSMutableArray (iTool)

- (id)safeObjectAtIndex:(NSUInteger)index
{
    if([self count] > 0 && [self count] > index)
        return [self objectAtIndex:index];
    else
        return nil;
}

- (void)moveObjectFromIndex:(NSUInteger)from toIndex:(NSUInteger)to
{
    if(to != from)
    {
        id obj = [self safeObjectAtIndex:from];
        [self removeObjectAtIndex:from];
        
        if(to >= [self count])
            [self addObject:obj];
        else
            [self insertObject:obj atIndex:to];
    }
}

- (void)it_safeAddObject:(id)obj
{
    if (obj) {
        [self addObject:obj];
    }
}

@end
