//
//  NSMutableDictionary+iTool.h
//  iToolBox
//
//  Created by liuhongnian on 15/5/7.
//  Copyright (c) 2015年 liuhongnian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (iTool)

- (void)it_safeSetObject:(id)obj forKey:(NSString*)key;

@end
