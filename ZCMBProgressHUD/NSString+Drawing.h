//
//  NSString+Drawing.h
//  NewFramework
//
//  Created by 赵琛 on 2016/11/28.
//  Copyright © 2016年 赵琛. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (Drawing)

/**
 *  计算文本最大长度
 *
 *  @param font 指定字体
 *
 *  @return 文本长度
 */
- (CGFloat)sizeForFont:(UIFont *)font;

/**
 *  计算当前文本大小 在制定size中计算
 *
 *  @param font 字体
 *  @param size 计算区间
 *
 *  @return 文本区域
 */
- (CGSize)sizeForFont:(UIFont *)font size:(CGSize)size;

/**
 *  计算当前文本大小 在制定size中计算
 *
 *  @param font          字体
 *  @param size          计算区间
 *  @param lineBreakMode 行模式
 *
 *  @return 文本区域
 */
- (CGSize)sizeForFont:(UIFont *)font size:(CGSize)size mode:(NSLineBreakMode)lineBreakMode;

/**
 *  计算当前文本宽度
 *
 *  @param font 字体
 *
 *  @return 文本宽度
 */
- (CGFloat)widthForFont:(UIFont *)font;

/**
 *  在制定宽度内计算文本高度
 *
 *  @param font  字体
 *  @param width 区间宽度
 *
 *  @return 文本高度
 */
- (CGFloat)heightForFont:(UIFont *)font width:(CGFloat)width;

@end
