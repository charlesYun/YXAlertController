//
//  YXAlertController.m
//  YXAlertControllerDemo
//
//  Created by 曹云霄 on 2017/2/14.
//  Copyright © 2017年 曹云霄. All rights reserved.
//

#import "YXAlertController.h"

@implementation YXAlertController

UIAlertController * BaseAlert(NSString *title, NSString *message, UIAlertControllerStyle style) {
    UIAlertController *alertContr = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:style];
    return alertContr;
}

void ShowAlertView(NSString *title, NSString *message, NSArray *menuArray, UIAlertControllerStyle style, void (^completed)(NSInteger index)) {
    UIAlertController *alert = BaseAlert(title, message, style);
    for (NSInteger i = menuArray.count - 1; i >= 0; i--) {
        NSString *menuTitle = menuArray[i];
        if (i == 0) {
            [alert addAction:[UIAlertAction actionWithTitle:menuTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
                if (completed) {
                    completed([menuArray indexOfObject:action.title]);
                }
            }]];
        } else {
            [alert addAction:[UIAlertAction actionWithTitle:menuTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action) {
                if (completed) {
                    completed([menuArray indexOfObject:action.title]);
                }
            }]];
        }
    }
    [AppRootViewController() presentViewController:alert animated:YES completion:nil];
}

void ShowCustomAlertView(NSString *title, NSString *message, NSArray <UIAlertAction *>*menuArray, UIAlertControllerStyle style) {
    UIAlertController *alert = BaseAlert(title, message, style);
    for (NSInteger i = menuArray.count - 1; i >= 0; i--) {
        [alert addAction:menuArray[i]];
    }
    [AppRootViewController() presentViewController:alert animated:YES completion:nil];
}

void ShowTextFieldAlertView(NSString *title, NSString *message, NSArray *menuArray, NSArray *placeholderArray, void (^completed)(NSInteger index, NSArray <UITextField *> *inputArray)) {
    UIAlertController *alert = BaseAlert(title, message, UIAlertControllerStyleAlert);
    for (int i = 0; i < placeholderArray.count; i++) {
        NSString *placeholder = placeholderArray[i];
        [alert addTextFieldWithConfigurationHandler:^(UITextField *_Nonnull textField) {
            textField.placeholder = placeholder;
        }];
    }
    for (int i = 0; i < menuArray.count; i++) {
        NSString *menuTitle = menuArray[i];
        if (i == placeholderArray.count - 1) {
            [alert addAction:[UIAlertAction actionWithTitle:menuTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
                if (completed) {
                    completed([menuArray indexOfObject:action.title], alert.textFields);
                }
            }]];
        } else {
            [alert addAction:[UIAlertAction actionWithTitle:menuTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action) {
                if (completed) {
                    completed([menuArray indexOfObject:action.title], alert.textFields);
                }
            }]];
        }
    }
    [AppRootViewController() presentViewController:alert animated:YES completion:nil];
}

UIViewController * AppRootViewController() {
    UIViewController *controller = [UIApplication sharedApplication].keyWindow.rootViewController;
    if (controller.presentedViewController != nil) {
        controller = controller.presentedViewController;
    }
    return controller;
}

@end
