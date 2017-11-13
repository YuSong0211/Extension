//
//  UITextField+Extension.h
//  component
//
//  Created by JOWTO on 2017/11/13.
//  Copyright © 2017年 wangyusong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (Extension)

/// 实例化 UITextField
///
/// @param placeHolder     占位文本
///
/// @return UITextField
+ (nonnull instancetype)textFieldWithPlaceHolder:(nonnull NSString *)placeHolder;

@end
