//
//  iTBLog.h
//  iToolBox
//
//  Created by liuhongnian on 15/2/10.
//  Copyright (c) 2015年 liuhongnian. All rights reserved.
//

#import <Foundation/Foundation.h>

void ExtendNSLog(const char *file, int lineNumber, const char *functionName, NSString *format, ...);

@interface iTBLog : NSObject

#ifdef DEBUG
#define iTBDebugLog(...) ExtendNSLog(__FILE__,__LINE__,__PRETTY_FUNCTION__,__VA_ARGS__);
#else
#define iTBDebugLog(...)
#endif

@end
