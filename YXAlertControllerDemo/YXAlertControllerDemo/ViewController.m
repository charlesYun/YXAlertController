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
    
//    ShowDefaultAlertView(self, @"提示", @"你好吗", UIAlertControllerStyleAlert, ^{
//        
//        NSLog(@"成功");
//    }, ^{
//        NSLog(@"取消");
//    });
    
    ShowAlertView(self, @"提示", @"还好吗", @"滚蛋", @"过来", 1, ^{
        
        
        NSLog(@"成功");
    }, ^{
        NSLog(@"取消");
    });
    
    
    
    
    
    
    
}

@end
