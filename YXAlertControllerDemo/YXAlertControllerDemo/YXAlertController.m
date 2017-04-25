//
//  YXAlertController.m
//  YXAlertControllerDemo
//
//  Created by 曹云霄 on 2017/2/14.
//  Copyright © 2017年 曹云霄. All rights reserved.
//

#import "YXAlertController.h"

@implementation YXAlertController



/**
 初始化base

 @param title          提示标题
 @param message        提示说明
 @param style          风格
 @return               UIAlertController
 */
UIAlertController *BaseAlert(NSString *title,NSString *message,UIAlertControllerStyle style) {
    
    UIAlertController *alertContr = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    return alertContr;
}


/**
 默认提示选择框

 @param title          提示标题
 @param message        提示说明
 @param style          风格
 @param completed      确定回调
 @param canceled       取消回调
 */
void ShowDefaultAlertView(NSString *title,NSString *message,UIAlertControllerStyle style,void(^completed)(),void(^canceled)()) {
    
    UIAlertController *alert = BaseAlert(title, message, style);
    [alert addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        if (canceled) {
            canceled();
        }
    }]];
    [alert addAction:[UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (completed) {
            completed();
        }
    }]];
    [AppRootViewController() presentViewController:alert animated:YES completion:nil];
}


/**
 提示选择框

 @param title          提示标题
 @param message        提示说明
 @param cancelTitle    取消按钮
 @param DefaultTitle   确认按钮
 @param style          风格
 @param completed      确定回调
 @param canceled       取消回调
 */
void ShowAlertView(NSString *title,NSString *message,NSString *cancelTitle,NSString *DefaultTitle,UIAlertControllerStyle style,void(^completed)(),void(^canceled)()) {
    
    UIAlertController *alert = BaseAlert(title, message, style);
    [alert addAction:[UIAlertAction actionWithTitle:cancelTitle style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        if (canceled) {
            canceled();
        }
    }]];
    [alert addAction:[UIAlertAction actionWithTitle:DefaultTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (completed) {
            completed();
        }
    }]];
    [AppRootViewController() presentViewController:alert animated:YES completion:nil];
}



/**
 自动获取app最顶层控制器

 @return UIViewController
 */
UIViewController *AppRootViewController() {
    UIViewController *controller = [UIApplication sharedApplication].keyWindow.rootViewController;
    if (controller.presentedViewController != nil) {
        controller = controller.presentedViewController;
    }
    return  controller;
}



























@end
