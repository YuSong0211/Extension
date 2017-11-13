//
//  UIImage+Extension.m
//  zhongyou
//
//  Created by JOWTO on 2017/8/7.
//  Copyright © 2017年 wangyusong. All rights reserved.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)


- (UIImage *)croppIngimageByImageName:(UIImage *)imageToCrop toRect:(CGRect)rect
{
    //CGRect CropRect = CGRectMake(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height+15);
    
    CGImageRef imageRef = CGImageCreateWithImageInRect([imageToCrop CGImage], rect);
    UIImage *cropped = [UIImage imageWithCGImage:imageRef];
    CGImageRelease(imageRef);
    
    return cropped;
}


+ (UIImage*) createImageWithColor: (UIColor*) color withRect:(CGSize)imgSize
{
    CGRect rect = CGRectMake(0.0f, 0.0f, imgSize.width, imgSize.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    /*
     UIGraphicsBeginImageContextWithOptions(CGSizeMake(1, 1), YES, 0);
     
     [color setFill];
     UIRectFill(CGRectMake(0, 0, 1, 1));
     
     UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
     UIGraphicsEndImageContext();
     */

    return theImage;
}

+ (UIImage *)imageWithOriginalImageName:(NSString *)imageName
{
    UIImage *selImg = [UIImage imageNamed:imageName];
    
    // 让图片保持最原始的图片
    return [selImg imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
}
+ (UIImage *)imageWithStretchableImageName:(NSString *)imageName
{
    UIImage *img = [UIImage imageNamed:imageName];
    
    // 让图片保持最原始的图片
    return [img stretchableImageWithLeftCapWidth:img.size.width * 0.5 topCapHeight:img.size.height * 0.5];
    
}

@end
