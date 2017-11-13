//
//  UINavigationController+Extionsion.m
//  component
//
//  Created by JOWTO on 2017/11/13.
//  Copyright © 2017年 wangyusong. All rights reserved.
//

#import "UINavigationController+Extionsion.h"
#import <objc/runtime.h>

@interface HMFullScreenPopGestureRecognizerDelegate : NSObject <UIGestureRecognizerDelegate>

@property (nonatomic, weak) UINavigationController *navigationController;

@end

@implementation HMFullScreenPopGestureRecognizerDelegate

- (BOOL)gestureRecognizerShouldBegin:(UIPanGestureRecognizer *)gestureRecognizer {
    
    // 判断是否是根控制器，如果是就取消手势
    if (self.navigationController.viewControllers.count <= 1) {
        return NO;
    }
    
    
    //如果是专场动画，取消手势
    if ([[self.navigationController valueForKey:@"_isTransitioning"] boolValue]) {
        return NO;
    }
    
    //判断手指移动方向
    CGPoint translation = [gestureRecognizer translationInView:gestureRecognizer.view];
    if (translation.x <= 0) {
        return NO;
    }
    
    return YES;
}

@end

@implementation UINavigationController (Extionsion)

+ (void)load {
    
    Method originalMethod = class_getInstanceMethod([self class], @selector(pushViewController:animated:));
    Method swizzledMethod = class_getInstanceMethod([self class], @selector(hm_pushViewController:animated:));
    
    method_exchangeImplementations(originalMethod, swizzledMethod);
}

- (void)hm_pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    
    NSLog(@"%@",self.interactivePopGestureRecognizer.view.gestureRecognizers);
    
    if (![self.interactivePopGestureRecognizer.view.gestureRecognizers containsObject:self.hm_popGestureRecognizer]) {
        [self.interactivePopGestureRecognizer.view addGestureRecognizer:self.hm_popGestureRecognizer];
        // 找到属性名
        NSArray *targets = [self.interactivePopGestureRecognizer valueForKey:@"targets"];
        //targets.firstObject  获取属性
        //  获取方法target
        id internalTarget = [targets.firstObject valueForKey:@"target"];
        // 添加自定义手势,指定方法位系统内部私有的方法 handleNavigationTransition:
        SEL internalAction = NSSelectorFromString(@"handleNavigationTransition:");
        
        self.hm_popGestureRecognizer.delegate = [self hm_fullScreenPopGestureRecognizerDelegate];
        [self.hm_popGestureRecognizer addTarget:internalTarget action:internalAction];
        
        // 禁用系统的交互手势
        self.interactivePopGestureRecognizer.enabled = NO;
    }
    
    if (![self.viewControllers containsObject:viewController]) {
        [self hm_pushViewController:viewController animated:animated];
    }
}

- (HMFullScreenPopGestureRecognizerDelegate *)hm_fullScreenPopGestureRecognizerDelegate {
    HMFullScreenPopGestureRecognizerDelegate *delegate = objc_getAssociatedObject(self, _cmd);
    if (!delegate) {
        delegate = [[HMFullScreenPopGestureRecognizerDelegate alloc] init];
        delegate.navigationController = self;
        
        objc_setAssociatedObject(self, _cmd, delegate, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return delegate;
}

- (UIPanGestureRecognizer *)hm_popGestureRecognizer {
    UIPanGestureRecognizer *panGestureRecognizer = objc_getAssociatedObject(self, _cmd);
    
    if (panGestureRecognizer == nil) {
        panGestureRecognizer = [[UIPanGestureRecognizer alloc] init];
        panGestureRecognizer.maximumNumberOfTouches = 1;
        
        
        objc_setAssociatedObject(self, _cmd, panGestureRecognizer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return panGestureRecognizer;
}
@end
