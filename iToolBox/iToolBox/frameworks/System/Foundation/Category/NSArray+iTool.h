//
//  NSArray+iTool.h
//  iToolBox
//
//  Created by liuhongnian on 15/1/15.
//  Copyright (c) 2015年 liuhongnian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (iTool)

- (id)safeObjectAtIndex:(NSUInteger)index;

- (NSString *)arrayToJson;

@end
