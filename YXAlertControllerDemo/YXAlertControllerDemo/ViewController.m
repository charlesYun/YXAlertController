//
//  ViewController.m
//  YXAlertControllerDemo
//
//  Created by 曹云霄 on 2017/2/14.
//  Copyright © 2017年 曹云霄. All rights reserved.
//

#import "ViewController.h"
#import "YXAlertController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickAction:(UIButton *)sender {
    
    
    
    ShowAlertView(@"相机权限未开启", @"相机权限未开启，请进入系统【设置】>【隐私】>【相机】中打开开关,开启相机功能", @[@"取消",@"立即开启"], UIAlertControllerStyleAlert, ^(NSInteger index) {
 
    });
    
//    ShowTextFieldAlertView(@"提示", @"测试", @[@"取消",@"确认"], @[@"请输入"], ^(NSInteger index, NSArray<UITextField *> *inputArray) {
//        UITextField *textfield = inputArray.firstObject;
//        NSLog(@"%@",textfield.text);
//    });
    
    
    
    
    
}


















@end
