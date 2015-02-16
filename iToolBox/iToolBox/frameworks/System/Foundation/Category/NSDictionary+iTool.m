//
//  NSDictionary+iTool.m
//  iToolBox
//
//  Created by liuhongnian on 15/2/10.
//  Copyright (c) 2015年 liuhongnian. All rights reserved.
//

#import "NSDictionary+iTool.h"

@implementation NSDictionary (iTool)

- (NSString *)dictionaryToJson {
    return [NSDictionary dictionaryToJson:self];
}

+ (NSString *)dictionaryToJson:(NSDictionary *)dictionary {
    NSString *json     = nil;
    NSError  *error    = nil;
    NSData   *jsonData = [NSJSONSerialization dataWithJSONObject:dictionary options:NSJSONWritingPrettyPrinted error:&error];
    
    if (!jsonData) {
        return @"{}";
    } else if (!error) {
        json = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        return json;
    } else {
        return error.localizedDescription;
    }
}


@end
