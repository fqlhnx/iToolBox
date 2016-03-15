//
//  UIImage+iTool.h
//  iToolBox
//
//  Created by liuhongnian on 15/1/13.
//  Copyright (c) 2015年 liuhongnian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (iTool)


/**
 *  Create an image from a given color
 *
 *  @param color Color value
 *
 *  @return Return an UIImage instance
 */
+ (UIImage *)imageWithColor:(UIColor *)color;

+ (UIImage *)imageFromMainBundleFile:(NSString*)fileName;

+ (UIImage *)itb_appLaunchImage;

@end
