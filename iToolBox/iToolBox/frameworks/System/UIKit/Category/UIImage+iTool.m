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

+ (UIImage *)imageFromMainBundleFile:(NSString *)fileName
{
    NSString *filePath = [[NSBundle mainBundle]pathForResource:fileName ofType:@"png"];
    UIImage *image = [self imageWithContentsOfFile:filePath];
    
    return image;
}

+ (UIImage *)itb_appLaunchImage
{
    return [UIImage imageNamed:[self getAppLaunchImgName]];
}

//from stackflow
+ (NSString *)getAppLaunchImgName
{
    NSString *viewOrientation = @"Portrait";
    
    if (UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation))
    {
        viewOrientation = @"Landscape";
    }
    
    NSString *launchImgName;
    
    NSArray *imagesDict = [[[NSBundle mainBundle] infoDictionary]valueForKey:@"UILaunchImages"];
    
    CGSize viewSize = [UIApplication sharedApplication].windows.firstObject.bounds.size;
    
    for (NSDictionary *imgDic in imagesDict) {
        
        CGSize imageSize = CGSizeFromString(imgDic[@"UILaunchImageSize"]);
        
        if (CGSizeEqualToSize(imageSize, viewSize) && [viewOrientation isEqualToString:imgDic[@"UILaunchImageOrientation"]]) {
            
            launchImgName = imgDic[@"UILaunchImageName"];
        }
    }
    
    return launchImgName;
}

@end
