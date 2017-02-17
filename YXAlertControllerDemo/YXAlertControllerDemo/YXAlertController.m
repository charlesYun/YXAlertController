//
//  YXAlertController.m
//  YXAlertControllerDemo
//
//  Created by 曹云霄 on 2017/2/14.
//  Copyright © 2017年 曹云霄. All rights reserved.
//

#import "YXAlertController.h"

@implementation YXAlertController


#pragma mark -获取初始化alertView
UIAlertController *BaseAlert(NSString *title,NSString *message,UIAlertControllerStyle style) {
    
    UIAlertController *alertContr = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    return alertContr;
}


/**
 默认提示选择框

 @param viewController 控制器对象
 @param title          提示标题
 @param message        提示说明
 @param style          风格
 @param completed      确定回调
 @param canceled       取消回调
 */
void ShowDefaultAlertView(UIViewController *viewController,NSString *title,NSString *message,UIAlertControllerStyle style,void(^completed)(),void(^canceled)()) {
    
    UIAlertController *alert = BaseAlert(title, message, style);
    [alert addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        canceled();
    }]];
    [alert addAction:[UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        completed();
    }]];
    [viewController presentViewController:alert animated:YES completion:nil];
}


/**
 提示选择框

 @param viewController 控制器对象
 @param title          提示标题
 @param message        提示说明
 @param cancelTitle    取消按钮
 @param DefaultTitle   确认按钮
 @param style          风格
 @param completed      确定回调
 @param canceled       取消回调
 */
void ShowAlertView(UIViewController *viewController,NSString *title,NSString *message,NSString *cancelTitle,NSString *DefaultTitle,UIAlertControllerStyle style,void(^completed)(),void(^canceled)()) {
    
    UIAlertController *alert = BaseAlert(title, message, style);
    [alert addAction:[UIAlertAction actionWithTitle:cancelTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        canceled();
    }]];
    [alert addAction:[UIAlertAction actionWithTitle:DefaultTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        completed();
    }]];
    [viewController presentViewController:alert animated:YES completion:nil];
}


































@end
