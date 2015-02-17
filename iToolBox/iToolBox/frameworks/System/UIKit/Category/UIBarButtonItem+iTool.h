//
//  UIBarButtonItem+iTool.h
//  iToolBox
//
//  Created by liuhongnian on 15/2/16.
//  Copyright (c) 2015年 liuhongnian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (iTool)

- (id)it_initWithImage:(UIImage *)image
                 style:(UIBarButtonItemStyle) style
               handler:(void (^)(id sender))action NS_REPLACES_RECEIVER;

- (instancetype)it_initWithTitle:(NSString *)title style:(UIBarButtonItemStyle) style handler:(void(^)(id sender))action NS_REPLACES_RECEIVER;

@end
