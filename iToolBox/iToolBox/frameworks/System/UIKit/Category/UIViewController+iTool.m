//
//  UIViewController+iTool.m
//  iToolBox
//
//  Created by liuhongnian on 16/1/13.
//  Copyright (c) 2016年 liuhongnian. All rights reserved.
//

#import "UIViewController+iTool.h"

@implementation UIViewController (iTool)

+ (UIViewController *)it_currentTopViewController
{
    UIViewController *rootVC = [UIApplication sharedApplication].keyWindow.rootViewController;
    
    return [self findCurrentViewController:rootVC];
    
}

+ (UIViewController *)findCurrentViewController:(UIViewController *)viewController
{
    UIViewController *currentVC = viewController;
    if (viewController.presentedViewController) {
        
        [self findCurrentViewController:viewController.presentedViewController];
        
    }else if ([viewController isKindOfClass:[UINavigationController class]]) {
        
        UINavigationController *navController = (UINavigationController*)viewController;
        [self findCurrentViewController:navController.visibleViewController];
        
    }else if ([viewController isKindOfClass:[UITabBarController class]]){
        
        UITabBarController *tabBarCtrl = (UITabBarController*)viewController;
        [self findCurrentViewController:tabBarCtrl.selectedViewController];
        
    }else if ([viewController isKindOfClass:[UIViewController class]]){
        
        return currentVC;
    }
    
    return nil;
}

@end
