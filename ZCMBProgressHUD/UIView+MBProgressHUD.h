//
//  UIView+MBProgressHUD.h
//  NewFramework
//
//  Created by 赵琛 on 2016/11/26.
//  Copyright © 2016年 赵琛. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"

@interface UIView (MBProgressHUD)

#pragma mark - 菊花

/**
 永久性显示一个等待框，界面用户不可操作。黑色菊花
 */
- (void)showWaiting;


/**
 显示一个默认等待框，用户决定是否可操作

 @param userInteraction 是否可操作
 */
- (void)showWaiting:(BOOL)userInteraction;


/**
 显示一个默认等待框，用户决定是否可操作，显示文本

 @param userInteractiion 是否可操作
 @param message 显示文本
 */
- (void)showWaiting:(BOOL)userInteractiion message:(NSString *)message;



/**
 显示一个默认等待框，用户决定是否可操作，显示文本，显示多长时间

 @param userInteractiion 是否可操作
 @param message 显示文本
 @param seconds 显示时间
 */
- (void)showWaiting:(BOOL)userInteractiion message:(NSString *)message delay:(float)seconds;

#pragma mark - 展示自定义gif等待框

/**
 *  显示用户不可操作帧动画
 */
- (void)showGif;


/**
 显示帧动画

 @param userInteractiion 用户是否可操作
 */
- (void)showGif:(BOOL)userInteractiion;



#pragma mark - 普通文本显示

/**
 显示一个仅提示的文本

 @param text 文本
 */
- (void)showToast:(NSString *)text;


/**
 显示一个仅提示的文本,自定义显示时间

 @param text 文本
 @param second 时长
 */
- (void)showToast:(NSString *)text delay:(float)second;

#pragma mark - 隐藏提示

/**
 隐藏一个等待或提示框，无动画
 */
- (void)hiddenWaitingImmediately;


/**
 隐藏一个等待或提示框，有动画
 */
- (void)hiddenWaiting;

/**
 *  多次请求时进行显示调用次数维护,例如三次连续请求都完成后再进行隐藏
 */
- (void)hiddenWaitingForTransaction;

#pragma mark - 自定义提示

- (MBProgressHUD *)showCustomView:(UIView *)view userInteractiion:(BOOL)userInteractiion;


@end
