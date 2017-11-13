//
//  UIButton+Extension.h
//  component
//
//  Created by JOWTO on 2017/11/13.
//  Copyright © 2017年 wangyusong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Extension)

/// 实例化 UIButton
///
/// @param title           title
/// @param fontSize        fontSize
/// @param textColor       textColor
///
/// @return UIButton
+ (nonnull instancetype)buttonWithTitle:(nullable NSString *)title
                                  fontSize:(CGFloat)fontSize
                                 textColor:(nonnull UIColor *)textColor;

/// 实例化 UIButton
///
/// @param attributedText  attributedText
///
/// @return UIButton
+ (nonnull instancetype)buttonWithAttributedText:(nullable NSAttributedString *)attributedText;

/// 实例化 UIButton
///
/// @param imageName       imageName
/// @param highlightSuffix highlightSuffix
///
/// @return UIButton
+ (nonnull instancetype)buttonWithImageName:(nullable NSString *)imageName
                               highlightSuffix:(nullable NSString *)highlightSuffix
                                        target:(nullable id)target
                                        action:(nullable SEL)action;

/// 实例化 UIButton
///
/// @param imageName       imageName
/// @param backImageName   backImageName
/// @param highlightSuffix highlightSuffix
///
/// @return UIButton
+ (nonnull instancetype)buttonWithImageName:(nullable NSString *)imageName
                                 backImageName:(nullable NSString *)backImageName
                               highlightSuffix:(nullable NSString *)highlightSuffix;

/// 实例化 UIButton
///
/// @param title           title
/// @param fontSize        fontSize
/// @param textColor       textColor
/// @param imageName       imageName
/// @param backImageName   backImageName
/// @param highlightSuffix highlightSuffix
///
/// @return UIButton
+ (nonnull instancetype)buttonWithTitle:(nullable NSString *)title
                                  fontSize:(CGFloat)fontSize
                                 textColor:(nullable UIColor *)textColor
                                 imageName:(nullable NSString *)imageName
                             backImageName:(nullable NSString *)backImageName
                           highlightSuffix:(nullable NSString *)highlightSuffix
                                    target:(nullable id )target
                                    action:(nullable SEL)action;;

/// 实例化 UIButton
///
/// @param attributedText  attributedText
/// @param imageName       imageName
/// @param backImageName   backImageName
/// @param highlightSuffix highlightSuffix
///
/// @return UIButton
+ (nonnull instancetype)buttonWithAttributedText:(nullable NSAttributedString *)attributedText
                                          imageName:(nullable NSString *)imageName
                                      backImageName:(nullable NSString *)backImageName
                                    highlightSuffix:(nullable NSString *)highlightSuffix;



//////////////////////////////==ys==/////////////////////////////////////////////////

//+ (nonnull instancetype)hm_buttonWithAttributedText:(nullable NSString *)attributedText
//                                  fontSize:(CGFloat)fontSize
//                                 textColor:(nonnull UIColor *)textColor
//                                 imageName:(nullable NSString *)imageName
//                             backImageName:(nullable NSString *)backImageName
//                           highlightSuffix:(nullable NSString *)highlightSuffix
//                                    target:(nullable id )target
//

/// 实例化 UIButton
///
/// @param title           title
/// @param fontSize        fontSize
/// @param textColor       textColor
/// @param imageName       imageName
/// @param backImageName   backImageName
///
/// @return UIButton
+ (nonnull instancetype)buttonWithTitle:(nullable NSString *)title
                                  fontSize:(CGFloat)fontSize
                                 textColor:(nullable UIColor *)textColor
                                 imageName:(nullable NSString *)imageName
                             backImageName:(nullable NSString *)backImageName
                                    target:(nullable id )target
                                    action:(nullable SEL)action;


+ (nonnull instancetype)buttonWithbackImageName:(nullable NSString *)backImageName
                                            target:(nullable id )target
                                            action:(nullable SEL)action;

+ (nonnull instancetype)buttonWithTitle:(nullable NSString *)title
                                  fontSize:(CGFloat)fontSize
                                 textColor:(nullable UIColor *)textColor
                                    target:(nullable id )target
                                    action:(nullable SEL)action;



+ (nonnull instancetype)arrowUpButtonWithTitle:(nullable NSString *)title
                                           fontSize:(CGFloat)fontSize
                                          textColor:(nullable UIColor *)textColor
                                          imageName:(nullable NSString *)imageName
                                             target:(nullable id)target
                                             action:(nullable SEL)action
                                              Frame:(CGRect)frame;

@end
