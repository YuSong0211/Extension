//
//  UIImage+Extension.h
//  zhongyou
//
//  Created by JOWTO on 2017/8/7.
//  Copyright © 2017年 wangyusong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extension)

/**
 *  裁剪UIImage对象的大小
 *
 *  @param imageToCrop 需要裁剪的图片
 *  @param rect        想要的尺寸
 *
 *  @return 裁剪后的图片
 */
- (UIImage *)croppIngimageByImageName:(UIImage *)imageToCrop toRect:(CGRect)rect;

/**
 *  颜色值转换成图片的方法
 *
 *  @param color 需要转换的颜色
 *
 *  @return 改颜色生成的图片
 */
+ (UIImage*)createImageWithColor: (UIColor*) color withRect:(CGSize)rect;

+ (UIImage *)imageWithOriginalImageName:(NSString *)imageName;
+ (UIImage *)imageWithStretchableImageName:(NSString *)imageName;

@end
