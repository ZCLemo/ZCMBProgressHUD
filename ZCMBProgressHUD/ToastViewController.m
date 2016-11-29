//
//  ToastViewController.m
//  ZCMBProgressHUD
//
//  Created by 赵琛 on 2016/11/28.
//  Copyright © 2016年 赵琛. All rights reserved.
//

#import "ToastViewController.h"
#import "UIView+MBProgressHUD.h"
#import "NSString+Drawing.h"

@interface ToastViewController ()

@end

@implementation ToastViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"toast";
    self.view.backgroundColor = [UIColor whiteColor];
    
}


- (IBAction)one:(id)sender {
    
    [self.view showToast:@"德玛西亚。。。德玛西亚。。。德玛西亚。。。德玛西亚。。。德玛西亚。。。德玛西亚。。。德玛西亚。。。德玛西亚。。。德玛西亚。。。德玛西亚。。。德玛西亚。。。德玛西亚。。。德玛西亚。。。德玛西亚。。。德玛西亚。。。德玛西亚。。。德玛西亚。。。德玛西亚。。。德玛西亚。。。德玛西亚。。。德玛西亚。。。德玛西亚。。。德玛西亚。。。"];
}

- (IBAction)two:(id)sender {
    
    [self.view showToast:@"诺克萨斯。。。" delay:2.0];
}
@end
