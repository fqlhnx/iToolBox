//
//  UIImage+iTool.m
//  iToolBox
//
//  Created by liuhongnian on 15/1/13.
//  Copyright (c) 2015年 liuhongnian. All rights reserved.
//

#import "UIImage+iTool.h"

@implementation UIImage (iTool)

+ (UIImage *)imageWithColor:(UIColor *)color
{
    CGRect rect = CGRectMake(0, 0, 1, 1);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
