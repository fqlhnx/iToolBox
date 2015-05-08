//
//  NSBundle+iTool.m
//  iToolBox
//
//  Created by liuhongnian on 15/5/8.
//  Copyright (c) 2015年 liuhongnian. All rights reserved.
//

#import "NSBundle+iTool.h"

@implementation NSBundle (iTool)

- (UIImage *)it_appIconImage
{
    NSString *iconPath = [self it_appIconPath];
    UIImage  *appIcon = [[UIImage alloc] initWithContentsOfFile:iconPath];
    return appIcon;
}

- (NSString *)it_appIconPath
{
    NSString *iconFileName = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleIconFile"];
    NSString *iconBaseName = [iconFileName stringByDeletingPathExtension];
    NSString *iconExtension = [iconFileName pathExtension];
    
    return [[NSBundle mainBundle] pathForResource:iconBaseName
                                           ofType:iconExtension];
}

@end
