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
 提示选择框

 @param title          提示标题
 @param message        提示说明
 @param menuArray      菜单title Array
 @param style          风格
 @param completed     完成回调
 */
extern void ShowAlertView(NSString *title,NSString *message,NSArray *menuArray,UIAlertControllerStyle style,void(^completed)(NSInteger index));


/**
 输入框
 
 @param title            提示标题
 @param message          提示说明
 @param menuArray        菜单title Array
 @param placeholderArray 输入框占位符 Array
 @param completed        完成回调
 */
extern void ShowTextFieldAlertView(NSString *title,NSString *message,NSArray *menuArray,NSArray *placeholderArray,void(^completed)(NSInteger index,NSArray <UITextField *>*inputArray));

@end
