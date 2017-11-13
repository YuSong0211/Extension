//
//  UINavigationController+Extionsion.h
//  component
//
//  Created by JOWTO on 2017/11/13.
//  Copyright © 2017年 wangyusong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (Extionsion)

/// 自定义全屏拖拽返回手势
@property (nonatomic, strong, readonly) UIPanGestureRecognizer *hm_popGestureRecognizer;

@end
