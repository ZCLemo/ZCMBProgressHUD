//
//  MBProgressHUD+Count.m
//  NewFramework
//
//  Created by 赵琛 on 2016/11/28.
//  Copyright © 2016年 赵琛. All rights reserved.
//

#import "MBProgressHUD+Count.h"
#import <objc/runtime.h>

static const char MBProgressHUD_ShowCount_Key = '\0';

@implementation MBProgressHUD (Count)


- (void)setShowCount:(NSInteger)showCount
{
    NSNumber *showConutNumber = [NSNumber numberWithInteger:showCount];
    [self willChangeValueForKey:@"showCount"];
    objc_setAssociatedObject(self, &MBProgressHUD_ShowCount_Key, showConutNumber, OBJC_ASSOCIATION_ASSIGN);
}

- (NSInteger)showCount
{
    NSNumber *showCountNumber = objc_getAssociatedObject(self, &MBProgressHUD_ShowCount_Key);
    return showCountNumber.integerValue;
}

@end
