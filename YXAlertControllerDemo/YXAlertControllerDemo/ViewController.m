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
    
    
    
//    ShowDefaultAlertView(@"提示", @"sssnininin", UIAlertControllerStyleAlert, nil, nil);
//    
//    ShowAlertView(@"提示", @"你好，欢迎使用YXAlertController", @"取消", @"确认", UIAlertControllerStyleAlert, ^{
//        
//    }, ^{
//        
//    });
    
    ShowTextFieldAlertView(@"提示", @"测试", @[@"确认"], @[@"请输入"], ^(NSInteger index, NSArray<UITextField *> *inputArray) {
        UITextField *textfield = inputArray.firstObject;
        NSLog(@"%@",textfield.text);
    });
    
    
    
    
    
}


















@end
