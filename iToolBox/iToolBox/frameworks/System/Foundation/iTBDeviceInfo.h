//
//  iTBDeviceInfo.h
//  iToolBox
//
//  Created by liuhongnian on 15/1/8.
//  Copyright (c) 2015年 liuhongnian. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, DeviceVersion){
    iPhone4 = 3,
    iPhone4S = 4,
    iPhone5 = 5,
    iPhone5C = 5,
    iPhone5S = 6,
    iPhone6 = 7,
    iPhone6Plus = 8,
    
    iPad1 = 9,
    iPad2 = 10,
    iPadMini = 11,
    iPad3 = 12,
    iPad4 = 13,
    iPadAir = 15,
    iPadMiniRetina = 16,
    Simulator = 0
};

typedef NS_ENUM(NSInteger, DeviceSize){
    iPhone35inch = 1,
    iPhone4inch = 2,
    iPhone47inch = 3,
    iPhone55inch = 4
};

@interface iTBDeviceInfo : NSObject

+(DeviceVersion)deviceVersion;
+(DeviceSize)deviceSize;
+(NSString*)deviceName;

+ (BOOL)isDevicePhone;
+ (BOOL)isDevicePad;
+ (BOOL)isiPod;


@end
