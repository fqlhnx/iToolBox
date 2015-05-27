//
//  UIView+iTool.h
//  iToolBox
//
//  Created by liuhongnian on 15/1/19.
//  Copyright (c) 2015年 liuhongnian. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  thank BFKit
 */

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

/**
 *  Set the corner radius of UIView
 *
 *  @param radius Radius value
 */
- (void)itb_setCornerRadius:(CGFloat)radius;


@end
