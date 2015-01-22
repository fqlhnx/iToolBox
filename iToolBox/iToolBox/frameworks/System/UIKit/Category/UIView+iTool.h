//
//  UIView+iTool.h
//  iToolBox
//
//  Created by liuhongnian on 15/1/19.
//  Copyright (c) 2015年 liuhongnian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (iTool)

/**
 *  Create a border around the UIView
 *
 *  @param color  Border's color
 *  @param radius Border's radius
 *  @param width  Border's width
 */
- (void)createBordersWithColor:(UIColor *)color
              withCornerRadius:(CGFloat)radius
                      andWidth:(CGFloat)width;

@end
