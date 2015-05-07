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
@property (nonatomic, readonly) NSData   *				data;
@property (nonatomic, readonly) NSDate   *				date;

@property (nonatomic, readonly) NSString *				MD5;
@property (nonatomic, readonly) NSData   *				MD5Data;//todo

@property (nonatomic, readonly) NSString *				SHA1;
@property (nonatomic,readonly ) NSString * SHA256;
@property (nonatomic,readonly ) NSString * SHA512;

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

- (NSString*)encodeToBase64;
- (NSString *)decodeBase64;

#if (TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR)
- (CGSize)sizeWithFont:(UIFont *)font byWidth:(CGFloat)width;
#endif

//URL编码
- (NSString*)it_URLEncode;
- (NSString*)it_URLEncodeUsingEncoding:(NSStringEncoding)encoding;
//URL解码
- (NSString*)it_urlDecode;
- (NSString*)it_urlDecodeUsingEncoding:(NSStringEncoding)encoding;

@end


@interface NSString (iTTrims)
/**
 *  过滤掉空格
 *
 *  @return 过滤后的字符串
 */
- (NSString*)it_trimmingWhitespace;
/**
 *  过滤掉空格和换行回车
 *
 *  @return 过滤后的字符串
 */
- (NSString*)it_trimmingWhitespaceAndNewlines;

@end