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


/// AlertView
/// @param title 标题
/// @param message 说明
/// @param menuArray 菜单Array
/// @param style 风格
extern void ShowAlertView(NSString *title, NSString *message, NSArray *menuArray, UIAlertControllerStyle style, void (^completed)(NSInteger index));

/// 自定义AlertView
/// @param title 标题
/// @param message 说明
/// @param menuArray 菜单Array
/// @param style 风格
extern void ShowCustomAlertView(NSString *title, NSString *message, NSArray <UIAlertAction *>*menuArray, UIAlertControllerStyle style);

/// AlertView带输入框
/// @param title 标题
/// @param message 说明
/// @param menuArray 菜单Array
/// @param placeholderArray UITextField占位
extern void ShowTextFieldAlertView(NSString *title, NSString *message, NSArray *menuArray, NSArray *placeholderArray, void (^completed)(NSInteger index, NSArray <UITextField *> *inputArray));

@end
