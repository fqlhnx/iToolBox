//
//  UIButton+iTool.h
//  iToolBox
//
//  Created by liuhongnian on 15/1/13.
//  Copyright (c) 2015年 liuhongnian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (iTool)

+ (id)initWithFrame:(CGRect)frame title:(NSString *)title backgroundColor:(UIColor *)color highlightedColor:(UIColor *)highlightedColor;

- (void)setBackgroundColor:(UIColor *)color
          highlightedColor:(UIColor *)higlightedColor;

/**
 *  Set the title color and highlighted color
 *
 *  @param color            Button's color
 *  @param highlightedColor Button's highlighted color
 */
- (void)setTitleColor:(UIColor *)color
     highlightedColor:(UIColor *)highlightedColor;

@end
