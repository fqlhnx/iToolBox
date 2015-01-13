//
//  UIButton+iTool.m
//  iToolBox
//
//  Created by liuhongnian on 15/1/13.
//  Copyright (c) 2015年 liuhongnian. All rights reserved.
//

#import "UIButton+iTool.h"
#import "UIImage+iTool.h"

@implementation UIButton (iTool)


+ (id)initWithFrame:(CGRect)frame title:(NSString *)title backgroundColor:(UIColor *)color highlightedColor:(UIColor *)highlightedColor
{
    return [UIButton initWithFrame:frame title:title backgroundImage:[UIImage imageWithColor:color] highlightedBackgroundImage:[UIImage imageWithColor:highlightedColor]];
}

+ (id)initWithFrame:(CGRect)frame title:(NSString *)title backgroundImage:(UIImage *)backgroundImage highlightedBackgroundImage:(UIImage *)highlightedBackgroundImage
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:frame];
    [button setTitle:title forState:UIControlStateNormal];
    [button setBackgroundImage:backgroundImage forState:UIControlStateNormal];
    [button setBackgroundImage:highlightedBackgroundImage forState:UIControlStateHighlighted];
    
    return button;
}

- (void)setBackgroundColor:(UIColor *)color
          highlightedColor:(UIColor *)higlightedColor
{
    [self setBackgroundImage:[UIImage imageWithColor:color] forState:UIControlStateNormal];
    [self setBackgroundImage:[UIImage imageWithColor:higlightedColor] forState:UIControlStateHighlighted];
}

- (void)setTitleColor:(UIColor *)color highlightedColor:(UIColor *)highlightedColor
{
    [self setTitleColor:color forState:UIControlStateNormal];
    [self setTitleColor:highlightedColor forState:UIControlStateHighlighted];
}

@end
