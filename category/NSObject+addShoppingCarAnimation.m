//
//  NSObject+addShoppingCarAnimation.m
//  旋转
//
//  Created by JOWTO on 2017/8/18.
//  Copyright © 2017年 wangyusong. All rights reserved.
//

#import "NSObject+addShoppingCarAnimation.h"

@implementation NSObject (addShoppingCarAnimation)

+(void)addShoppingCarAnimationSupView:(CGFloat)scalexy imageView:(UIImageView *)originImageView shopCarPoint:(CGPoint)carPoint{
    
//    CGPoint carPoint = [supView convertPoint:originImageView.center fromView:originImageView.superview];
    
    UIImageView *imageView = [[UIImageView alloc]init];
    
    UIView * windowView = [UIApplication sharedApplication].keyWindow;
    imageView.frame = [windowView convertRect:originImageView.frame fromView:originImageView.superview];
    imageView.image = originImageView.image;
    
    imageView.layer.cornerRadius = imageView.frame.size.width/2;
    imageView.layer.masksToBounds = YES;
    [windowView addSubview:imageView];


    //设置动画快慢
    CAMediaTimingFunction *defaultCurve = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
    
    //动画组
    CAAnimationGroup  * _animationGroup = [CAAnimationGroup animation];
    _animationGroup.duration = 1.0;
//    _animationGroup.removedOnCompletion = YES; //完成后移除图层
    _animationGroup.timingFunction = defaultCurve;
    
    
    CABasicAnimation *animation = [CABasicAnimation animation];
    animation.keyPath = @"transform.rotation";
    animation.duration = 2.0;
    animation.byValue = @(M_PI * 2);
    animation.repeatCount = MAXFLOAT;
    
    //create keyframe animation
    CAKeyframeAnimation *position = [CAKeyframeAnimation animation];
    position.keyPath = @"position";
    position.duration = 1;
    
    CGPoint cPoint = imageView.center;
    position.values = @[
                        [NSValue valueWithCGPoint:cPoint],
                        [NSValue valueWithCGPoint:CGPointMake(cPoint.x, cPoint.y - 50)],
                        [NSValue valueWithCGPoint:CGPointMake(carPoint.x, carPoint.y)]
                        ];
    position.timingFunctions = @[[CAMediaTimingFunction functionWithName: kCAMediaTimingFunctionEaseIn]];
    position.removedOnCompletion = false;
    position.fillMode = kCAFillModeForwards;
    
    
    //动画
    CABasicAnimation *scaleAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale.xy"];
    scaleAnimation.fromValue = @1.0;
    scaleAnimation.toValue = @(scalexy);
    scaleAnimation.duration = 1.0;
    
    //关键 动画
    CAKeyframeAnimation *opacityAnimation = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
    opacityAnimation.duration = 1.0;
    opacityAnimation.values = @[@0.8,@0.5,@0.5];
    opacityAnimation.keyTimes = @[@0,@0.5,@1];
    opacityAnimation.removedOnCompletion = YES;
    
    NSArray *animations = @[scaleAnimation,opacityAnimation,animation,position];
    _animationGroup.animations = animations;
    [imageView.layer addAnimation:_animationGroup forKey:nil];
   
    dispatch_time_t delayTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.9/*延迟执行时间*/ * NSEC_PER_SEC));
    dispatch_after(delayTime, dispatch_get_main_queue(), ^{
        [imageView removeFromSuperview];
        
    });
    
    
}
@end
