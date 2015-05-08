//
//  NSMutableArray+iTool.h
//  iToolBox
//
//  Created by liuhongnian on 15-1-17.
//  Copyright (c) 2015年 liuhongnian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (iTool)

- (id)safeObjectAtIndex:(NSUInteger)index;

- (void)moveObjectFromIndex:(NSUInteger)from
                    toIndex:(NSUInteger)to;

- (void)it_safeAddObject:(id)obj;

@end
