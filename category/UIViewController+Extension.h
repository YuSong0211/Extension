
#import <UIKit/UIKit.h>

@interface UIViewController (Extension)

/**
 alertController  只有“确定”按钮
 @param
 title alert展示的标题
 msg:   alert展示的信息
 yesBlock: 点击确认按钮需要做的操作
 completeion: alert被present出来后需要做的操作
 */

- (void)alertControllerWithTitle:(NSString *)title
                         message:(NSString *)msg
                        yesBlock:(void(^)())yesBlock
                      completion:(void(^)())completion;

/**
 alertController 有“确定”、“取消”按钮
 @param
    title alert展示的标题
    msg:   alert展示的信息
    yesBlock: 点击确认按钮需要做的操作
    noBlock:  点击取消按钮需要做的操作
    completeion: alert被present出来后需要做的操作
 */
- (void)alertControllerWithTitle:(NSString *)title
                         message:(NSString *)msg
                        yesBlock:(void(^)())yesBlock
                         noBlock:(void(^)())noBlock
                      completion:(void(^)())completion;

/**
 前往登陆页的alert
 */
//- (void)alertControllerPushToLoginPage;
@end
