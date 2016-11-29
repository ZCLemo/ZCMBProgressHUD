//
//  MBProgressHUD+Count.h
//  NewFramework
//
//  Created by 赵琛 on 2016/11/28.
//  Copyright © 2016年 赵琛. All rights reserved.
//

#import <MBProgressHUD/MBProgressHUD.h>

/**
 *  处理一个界面多次请求的多次显示及隐藏问题
 */

@interface MBProgressHUD (Count)

/**
 *  当前view被显示的次数
 */
@property (nonatomic,assign)NSInteger showCount;

@end
