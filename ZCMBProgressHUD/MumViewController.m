//
//  MumViewController.m
//  ZCMBProgressHUD
//
//  Created by 赵琛 on 2016/11/28.
//  Copyright © 2016年 赵琛. All rights reserved.
//

#import "MumViewController.h"
#import "UIView+MBProgressHUD.h"

@interface MumViewController ()

@end

@implementation MumViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"菊花";
    self.view.backgroundColor = [UIColor whiteColor];
    

}

- (IBAction)tapOne:(id)sender {
    
    [self.view showWaiting];
    __weak typeof(self) weakSelf = self;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [weakSelf.view hiddenWaitingImmediately];

    });
}

- (IBAction)tapTwo:(id)sender {
    
    [self.view showWaiting:NO message:@"加载中..." delay:3.0];
    
}
- (IBAction)tapThree:(id)sender {
    
    [self.view showWaiting:NO message:@"加载中..."];
    __weak typeof(self) weakSelf = self;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [weakSelf.view hiddenWaiting];
        
    });
}

- (IBAction)tapFour:(id)sender {
    
    [self.view showWaiting];
    __weak typeof(self) weakSelf = self;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [weakSelf.view hiddenWaitingForTransaction];
        
    });
    
    [self.view showWaiting];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [weakSelf.view hiddenWaitingForTransaction];
        
    });
    
    [self.view showWaiting];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(4 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [weakSelf.view hiddenWaitingForTransaction];
        
    });
    
}
@end
