//
//  NSBundle+Extension.h
//  component
//
//  Created by JOWTO on 2017/11/13.
//  Copyright © 2017年 wangyusong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSBundle (Extension)

/// 当前版本号字符串
+ (NSString *)ysCurrentVersion;

/// 与当前屏幕尺寸匹配的启动图像
+ (UIImage *)ysLaunchImage;

@end
