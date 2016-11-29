//
//  UIView+MBProgressHUD.m
//  NewFramework
//
//  Created by 赵琛 on 2016/11/26.
//  Copyright © 2016年 赵琛. All rights reserved.
//

#import "UIView+MBProgressHUD.h"
#import "MBProgressHUD+Count.h"
#import "NSString+Drawing.h"
#import "ToastView.h"

@implementation UIView (MBProgressHUD)


- (void)showWaiting
{
    [self showWaiting:NO];
}

- (void)showWaiting:(BOOL)userInteraction
{
    [self showWaiting:userInteraction message:nil];
}

- (void)showWaiting:(BOOL)userInteractiion message:(NSString *)message
{
    [self showWaiting:userInteractiion message:message delay:MAXFLOAT];
}

- (void)showWaiting:(BOOL)userInteractiion message:(NSString *)message delay:(float)seconds
{
    MBProgressHUD *hud = [MBProgressHUD HUDForView:self];
    if (!hud) {
        hud = [[MBProgressHUD alloc] initWithView:self];
    }
    hud.showCount ++;
    hud.label.text = message;
    hud.removeFromSuperViewOnHide = YES;
    hud.mode = MBProgressHUDModeIndeterminate;
    hud.userInteractionEnabled = !userInteractiion;
    [self addSubview:hud];
    [hud showAnimated:YES];
    [hud hideAnimated:YES afterDelay:seconds];
}

- (void)showGif
{
    [self showGif:NO];
}

- (void)showGif:(BOOL)userInteractiion
{

    //这里最好把图片的配置写在plist里面，这里为了让大家更容易理解，就放在外面了
    NSArray *imageNames = @[@"hud_loading801",@"hud_loading802",@"hud_loading803"];
    NSMutableArray *images = [NSMutableArray array];
    for (NSString *imageName in imageNames)
    {
        UIImage *image = [UIImage imageNamed:imageName];
        [images addObject:image];
    }
    
    UIImageView *imageView = [[UIImageView alloc]init];
    UIImage *image = [images firstObject];
    imageView.image = image;
    imageView.frame = CGRectMake(0, 0, image.size.width, image.size.width);
    imageView.animationImages = images;
    imageView.animationDuration = 1;
    imageView.animationRepeatCount = 0;
    [imageView startAnimating];
    [self showCustomView:imageView userInteractiion:userInteractiion];
}

- (void)showToast:(NSString *)text
{
    [self showToast:text delay:3.0];
}

- (void)showToast:(NSString *)text delay:(float)second
{
    [self hiddenWaitingImmediately];
    if (text.length == 0) {
        return;
    }

    ToastView *view = [[ToastView alloc] initWithText:text];
    MBProgressHUD *hud  = [self showCustomView:view userInteractiion:NO];
    [hud hideAnimated:YES afterDelay:second];
}

- (void)hiddenWaitingImmediately
{
    MBProgressHUD * hud = [MBProgressHUD HUDForView:self];
    hud.showCount = 0;
    [MBProgressHUD hideHUDForView:self animated:NO];
}

- (void)hiddenWaiting
{
    MBProgressHUD * hud = [MBProgressHUD HUDForView:self];
    hud.showCount = 0;
    [MBProgressHUD hideHUDForView:self animated:YES];
}

- (void)hiddenWaitingForTransaction
{
    MBProgressHUD * hud = [MBProgressHUD HUDForView:self];
    hud.showCount--;
    if(hud.showCount <= 0)
    {
        [self hiddenWaitingImmediately];
    }
}

- (MBProgressHUD *)showCustomView:(UIView *)view userInteractiion:(BOOL)userInteractiion
{
    MBProgressHUD * hud = [MBProgressHUD HUDForView:self];
    if (!hud)
    {
        hud = [[MBProgressHUD alloc]initWithView:self];
    }
    hud.showCount ++;
    hud.mode = MBProgressHUDModeCustomView;
    hud.customView = view;
    hud.removeFromSuperViewOnHide = YES;
    hud.margin = 0;
    hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    hud.bezelView.backgroundColor = [UIColor clearColor];
    hud.userInteractionEnabled = !userInteractiion;
    [self addSubview:hud];
    [hud showAnimated:YES];
    return hud;
}





@end
