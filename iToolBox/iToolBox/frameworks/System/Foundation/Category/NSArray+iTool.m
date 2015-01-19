//
//  NSArray+iTool.m
//  iToolBox
//
//  Created by liuhongnian on 15/1/15.
//  Copyright (c) 2015年 liuhongnian. All rights reserved.
//

#import "NSArray+iTool.h"

@implementation NSArray (iTool)


- (id)safeObjectAtIndex:(NSUInteger)index
{
    if([self count] > 0 && [self count] > index)
        return [self objectAtIndex:index];
    else
        return nil;
}

- (NSString *)arrayToJson
{
    return [NSArray arrayToJson:self];
}

+ (NSString *)arrayToJson:(NSArray*)array
{
    NSString *json = nil;
    NSError *error = nil;
    NSData *data = [NSJSONSerialization dataWithJSONObject:array options:0 error:&error];
    if(!error)
    {
        json = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        return json;
    }
    else
        return error.localizedDescription;
}

@end
