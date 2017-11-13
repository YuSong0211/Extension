

#import "UIViewController+Extension.h"


@implementation UIViewController (Extension)

#pragma mark --- 创建alert
- (void)alertControllerWithTitle:(NSString *)title message:(NSString *)msg yesBlock:(void(^)())yesBlock noBlock:(void(^)())noBlock completion:(void(^)())completion {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:msg preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:noBlock];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:yesBlock];
    
    [alert addAction:cancel];
    [alert addAction:ok];
    
    [self presentViewController:alert animated:YES completion:completion];
}

- (void)alertControllerWithTitle:(NSString *)title message:(NSString *)msg yesBlock:(void(^)())yesBlock completion:(void(^)())completion {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:msg preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDefault handler:yesBlock];
    
    [alert addAction:ok];
    
    [self presentViewController:alert animated:YES completion:completion];
}

//
//// 前往登陆页
//- (void)alertControllerPushToLoginPage {
//    //清楚用户数据
//    [SomeSupport removeAllUserSavedInformation];
//    
//    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"未登录" message:@"您的登录信息无效或已在其他地方登录,\n是否进入登录页面?" preferredStyle:UIAlertControllerStyleAlert];
//    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
//    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//        SSCLoginViewController *login = [[SSCLoginViewController alloc] init];
//        [self.navigationController pushViewController:login animated:YES];
//    }];
//    
//    [alert addAction:cancel];
//    [alert addAction:ok];
//    
//    [self presentViewController:alert animated:YES completion:nil];
//}
@end
