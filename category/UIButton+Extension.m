//
//  UIButton+Extension.m
//  component
//
//  Created by JOWTO on 2017/11/13.
//  Copyright © 2017年 wangyusong. All rights reserved.
//

#import "UIButton+Extension.h"

@implementation UIButton (Extension)


+ (instancetype)buttonWithTitle:(NSString *)title fontSize:(CGFloat)fontSize textColor:(UIColor *)textColor {
    NSAttributedString *attributedText = [[NSAttributedString alloc]
                                          initWithString:title
                                          attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:fontSize],
                                                       NSForegroundColorAttributeName: textColor}];
    
    return [self buttonWithAttributedText:attributedText];
}

+ (instancetype)buttonWithAttributedText:(NSAttributedString *)attributedText{
    return [self buttonWithAttributedText:attributedText imageName:nil backImageName:nil highlightSuffix:nil];
}

+ (instancetype)buttonWithImageName:(NSString *)imageName highlightSuffix:(NSString *)highlightSuffix target:(id)target action:(SEL)action {
    
    return [self buttonWithAttributedText:nil imageName:imageName backImageName:nil highlightSuffix:highlightSuffix target:target action:action];
}

+ (instancetype)buttonWithImageName:(NSString *)imageName backImageName:(NSString *)backImageName highlightSuffix:(NSString *)highlightSuffix {
    
    return [self buttonWithAttributedText:nil imageName:imageName backImageName:backImageName highlightSuffix:highlightSuffix];
}

+ (instancetype)buttonWithTitle:(NSString *)title fontSize:(CGFloat)fontSize textColor:(UIColor *)textColor imageName:(NSString *)imageName backImageName:(NSString *)backImageName highlightSuffix:(NSString *)highlightSuffix target:(id)target action:(SEL)action{
    
    NSAttributedString *attributedText = [[NSAttributedString alloc]
                                          initWithString:title
                                          attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:fontSize],
                                                       NSForegroundColorAttributeName: textColor}];
    
    return [self buttonWithAttributedText:attributedText imageName:imageName backImageName:backImageName highlightSuffix:highlightSuffix target:target action:action];
}

+ (instancetype)buttonWithAttributedText:(NSAttributedString *)attributedText imageName:(NSString *)imageName backImageName:(NSString *)backImageName highlightSuffix:(NSString *)highlightSuffix {
    
    UIButton *button = [[self alloc] init];
    
    [button setAttributedTitle:attributedText forState:UIControlStateNormal];
    
    if (imageName != nil) {
        [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
        
        NSString *highlightedImageName = [imageName stringByAppendingString:highlightSuffix];
        [button setImage:[UIImage imageNamed:highlightedImageName] forState:UIControlStateHighlighted];
    }
    
    if (backImageName != nil) {
        [button setBackgroundImage:[UIImage imageNamed:backImageName] forState:UIControlStateNormal];
        
        NSString *highlightedImageName = [backImageName stringByAppendingString:highlightSuffix];
        [button setBackgroundImage:[UIImage imageNamed:highlightedImageName] forState:UIControlStateHighlighted];
    }
    
    [button sizeToFit];
    
    return button;
}
+ (instancetype)buttonWithAttributedText:(NSAttributedString *)attributedText imageName:(NSString *)imageName backImageName:(NSString *)backImageName highlightSuffix:(NSString *)highlightSuffix target:(id)target action:(SEL)action{
    
    UIButton *button = [[self alloc] init];
    
    [button setAttributedTitle:attributedText forState:UIControlStateNormal];
    
    if (imageName != nil) {
        [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
        
        NSString *highlightedImageName = [imageName stringByAppendingString:highlightSuffix ? highlightSuffix: @""];
        [button setImage:[UIImage imageNamed:highlightedImageName] forState:UIControlStateHighlighted];
    }
    
    if (backImageName != nil) {
        [button setBackgroundImage:[UIImage imageNamed:backImageName] forState:UIControlStateNormal];
        
        NSString *highlightedImageName = [backImageName stringByAppendingString:highlightSuffix];
        [button setBackgroundImage:[UIImage imageNamed:highlightedImageName] forState:UIControlStateHighlighted];
    }
    
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [button sizeToFit];
    
    return button;
}


+ (instancetype)buttonWithTitle:(NSString *)title fontSize:(CGFloat)fontSize textColor:(UIColor *)textColor imageName:(NSString *)imageName backImageName:(NSString *)backImageName target:(id)target action:(SEL)action{
    
    UIButton *button = [[self alloc] init];
    [button setTitle:title forState:(UIControlStateNormal)];
    button.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    [button setTitleColor:textColor forState:UIControlStateNormal];
    
    
    if (imageName != nil) {
        [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
        
        //        NSString *highlightedImageName = [imageName stringByAppendingString:highlightSuffix ? highlightSuffix: @""];
        [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateHighlighted];
    }
    
    if (backImageName != nil) {
        [button setBackgroundImage:[UIImage imageNamed:backImageName] forState:UIControlStateNormal];
        //        NSString *highlightedImageName = [backImageName stringByAppendingString:highlightSuffix];
        [button setBackgroundImage:[UIImage imageNamed:backImageName] forState:UIControlStateHighlighted];
    }
    
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    //    [button sizeToFit];
    
    
    return button;
}

+ (nonnull instancetype)buttonWithbackImageName:(nullable NSString *)backImageName
                                            target:(nullable id )target
                                            action:(nullable SEL)action{
    UIButton *button = [[self alloc] init];
    
    if (backImageName != nil) {
        [button setBackgroundImage:[UIImage imageNamed:backImageName] forState:UIControlStateNormal];
        [button setBackgroundImage:[UIImage imageNamed:backImageName] forState:UIControlStateHighlighted];
        //        [button setImage:[UIImage imageNamed:backImageName] forState:UIControlStateNormal];
        //        [button setImage:[UIImage imageNamed:backImageName] forState:UIControlStateHighlighted];
    }
    
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return button;
}

+ (nonnull instancetype)buttonWithTitle:(nullable NSString *)title
                                  fontSize:(CGFloat)fontSize
                                 textColor:(nullable UIColor *)textColor
                                    target:(nullable id )target
                                    action:(nullable SEL)action{
    
    UIButton *button = [[self alloc] init];
    //    [button setTitle:title forState:(UIControlStateNormal)];
    //    button.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    //    [button setTitleColor:textColor forState:UIControlStateNormal];
    
    
    NSAttributedString *attributedText = [[NSAttributedString alloc]
                                          initWithString:title
                                          attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:fontSize],
                                                       NSForegroundColorAttributeName: textColor}];
    
    
    [button setAttributedTitle:attributedText forState:UIControlStateNormal];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return button;
}



+ (instancetype)arrowUpButtonWithTitle:(NSString *)title fontSize:(CGFloat)fontSize textColor:(UIColor *)textColor imageName:(NSString *)imageName target:(id)target action:(SEL)action Frame:(CGRect)frame{
    
    UIButton *button = [[self alloc] init];
    button.frame = frame;
    [button setTitle:title forState:(UIControlStateNormal)];
    button.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    [button setTitleColor:textColor forState:UIControlStateNormal];
    
    
    if (imageName != nil) {
        [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateHighlighted];
    }
    
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    //
    [button setTitleEdgeInsets:UIEdgeInsetsMake(0, -button.imageView.frame.origin.x, 0, 0)];
    [button setImageEdgeInsets:UIEdgeInsetsMake(0, CGRectGetMaxX(button.titleLabel.frame), 0, 0)];
    
    return button;
}

@end
