//
//  NSDictionary+iTool.h
//  iToolBox
//
//  Created by liuhongnian on 15/2/10.
//  Copyright (c) 2015年 liuhongnian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (iTool)

/**
 *  Convert self to JSON as NSString
 *
 *  @return Return the JSON as NSString or nil if error while parsing
 */
- (NSString *)dictionaryToJson;

@end
