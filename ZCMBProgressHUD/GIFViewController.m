//
//  GIFViewController.m
//  ZCMBProgressHUD
//
//  Created by 赵琛 on 2016/11/28.
//  Copyright © 2016年 赵琛. All rights reserved.
//

#import "GIFViewController.h"
#import "UIView+MBProgressHUD.h"

@interface GIFViewController ()

@end

@implementation GIFViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"GIF";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view showGif];
    __weak typeof(self) weakSelf = self;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [weakSelf.view hiddenWaitingImmediately];
    });
}


@end
