//
//  UIApplication+iTool.m
//  iToolBox
//
//  Created by liuhongnian on 15/9/28.
//  Copyright (c) 2015年 liuhongnian. All rights reserved.
//

#import "UIApplication+iTool.h"
#import "iTBSystemInfo.h"

@implementation UIApplication (iTool)

+ (BOOL)isAllowedPushNotification
{
    //ios 8
    if (IOS8_OR_LATER) {
        
        UIUserNotificationSettings *settings = [UIApplication sharedApplication].currentUserNotificationSettings;
        if (UIUserNotificationTypeNone != settings.types) {
            return YES;
        }
        
    } else {
        //ios7
        UIRemoteNotificationType types = [UIApplication sharedApplication].enabledRemoteNotificationTypes;
        if (UIRemoteNotificationTypeNone != types) {
            return YES;
        }
    }
    
    return NO;
}

@end
