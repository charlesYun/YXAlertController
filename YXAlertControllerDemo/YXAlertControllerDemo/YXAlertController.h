//
//  YXAlertController.h
//  YXAlertControllerDemo
//
//  Created by 曹云霄 on 2017/2/14.
//  Copyright © 2017年 曹云霄. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>





@interface YXAlertController : UIAlertController

/**
 默认提示选择框
 
 @param viewController 控制器对象
 @param title          提示标题
 @param message        提示说明
 @param style          风格
 @param completed      确定回调
 @param canceled       取消回调
 */
extern void ShowDefaultAlertView(UIViewController *viewController,NSString *title,NSString *message,UIAlertControllerStyle style,void(^completed)(),void(^canceled)());

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
extern void ShowAlertView(UIViewController *viewController,NSString *title,NSString *message,NSString *cancelTitle,NSString *DefaultTitle,UIAlertControllerStyle style,void(^completed)(),void(^canceled)());


@end
