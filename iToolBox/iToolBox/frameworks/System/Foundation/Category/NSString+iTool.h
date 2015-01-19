//
//  NSString+iTool.h
//  iToolBox
//
//  Created by liuhongnian on 15/1/8.
//  Copyright (c) 2015年 liuhongnian. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@interface NSString (iTool)
@property (nonatomic, readonly) NSData *				data;
@property (nonatomic, readonly) NSDate *				date;

@property (nonatomic, readonly) NSString *				MD5;
@property (nonatomic, readonly) NSData *				MD5Data;//todo

@property (nonatomic, readonly) NSString *				SHA1;

- (BOOL)isEmpty;
- (BOOL)isNotEmpty;

- (BOOL)isNormal;

- (BOOL)isTelephone;    // match telephone
- (BOOL)isMobilephone;  // match mobilephone, 11 numberic
- (BOOL)isUserName;     // match alphabet 3-20
- (BOOL)isChineseUserName;  // match alphabet and chinese characters, 3-20
- (BOOL)isPureChineseName;// match just chinese characters 2-16
- (BOOL)isPassword;
- (BOOL)isEmail;
- (BOOL)isWebURL;
- (BOOL)isIPAddress;

#if (TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR)
- (CGSize)sizeWithFont:(UIFont *)font byWidth:(CGFloat)width;
#endif

@end
