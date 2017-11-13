//
//  UITextField+Extension.m
//  component
//
//  Created by JOWTO on 2017/11/13.
//  Copyright © 2017年 wangyusong. All rights reserved.
//

#import "UITextField+Extension.h"

@implementation UITextField (Extension)

+ (instancetype)textFieldWithPlaceHolder:(NSString *)placeHolder {
    
    UITextField *textField = [[self alloc] init];
    
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.placeholder = placeHolder;
    
    return textField;
}

@end
