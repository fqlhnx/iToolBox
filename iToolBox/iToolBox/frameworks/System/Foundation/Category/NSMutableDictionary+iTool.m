//
//  NSMutableDictionary+iTool.m
//  iToolBox
//
//  Created by liuhongnian on 15/5/7.
//  Copyright (c) 2015年 liuhongnian. All rights reserved.
//

#import "NSMutableDictionary+iTool.h"

@implementation NSMutableDictionary (iTool)

- (void)it_safeSetObject:(id)obj forKey:(NSString *)key
{
    NSAssert(obj, @"字典中添加的对象不能为空");
    if (obj) {
        self[key] = obj;
    }
}

@end
