//
//  UIBarButtonItem+iTool.m
//  iToolBox
//
//  Created by liuhongnian on 15/2/16.
//  Copyright (c) 2015年 liuhongnian. All rights reserved.
//

#import "UIBarButtonItem+iTool.h"

#import <objc/runtime.h>

static const void *BKBarButtonItemBlockKey = &BKBarButtonItemBlockKey;

@implementation UIBarButtonItem (iTool)

- (id)it_initWithImage:(UIImage *)image style:(UIBarButtonItemStyle)style handler:(void (^)(id))action
{
    self = [self initWithImage:image style:style target:self action:@selector(bk_handleAction:)];
    
    if (!self) {
        return nil;
    }
    
    objc_setAssociatedObject(self, BKBarButtonItemBlockKey, action, OBJC_ASSOCIATION_COPY_NONATOMIC);
    
    return self;
}

- (instancetype)it_initWithTitle:(NSString *)title style:(UIBarButtonItemStyle)style handler:(void (^)(id))action
{
    self = [self initWithTitle:title style:style target:self action:@selector(bk_handleAction:)];
    if (self) {
        
        objc_setAssociatedObject(self, BKBarButtonItemBlockKey, action, OBJC_ASSOCIATION_COPY_NONATOMIC);
    }
    return self;
}

- (void)bk_handleAction:(UIBarButtonItem *)sender
{
    void (^block)(id) = objc_getAssociatedObject(self, BKBarButtonItemBlockKey);
    if (block) block(self);
}

@end
