//
//  NSString+Drawing.m
//  NewFramework
//
//  Created by 赵琛 on 2016/11/28.
//  Copyright © 2016年 赵琛. All rights reserved.
//

#import "NSString+Drawing.h"

@implementation NSString (Drawing)


- (CGFloat)sizeForFont:(UIFont *)font
{
    CGSize size = [self sizeForFont:font size:CGSizeMake(MAXFLOAT, MAXFLOAT)];
    return size.width;
}

- (CGSize)sizeForFont:(UIFont *)font size:(CGSize)size
{
    return [self sizeForFont:font size:size mode:NSLineBreakByWordWrapping];
}

- (CGSize)sizeForFont:(UIFont *)font size:(CGSize)size mode:(NSLineBreakMode)lineBreakMode
{
    CGSize result;
    if(font == nil)
    {
        font = [UIFont systemFontOfSize:12];
    }
    
    if ([self respondsToSelector:@selector(boundingRectWithSize:options:attributes:context:)])
    {
        NSMutableDictionary *attr = [NSMutableDictionary new];
        attr[NSFontAttributeName] = font;
        if (lineBreakMode != NSLineBreakByWordWrapping)
        {
            NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
            paragraphStyle.lineBreakMode = lineBreakMode;
            attr[NSParagraphStyleAttributeName] = paragraphStyle;
        }
        CGRect rect = [self boundingRectWithSize:size
                                         options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                      attributes:attr context:nil];
        result = rect.size;
    }
    return result;
}

- (CGFloat)widthForFont:(UIFont *)font
{
    return [self sizeForFont:font size:CGSizeMake(MAXFLOAT, MAXFLOAT) mode:NSLineBreakByWordWrapping].width;
}

- (CGFloat)heightForFont:(UIFont *)font width:(CGFloat)width
{
    return [self sizeForFont:font size:CGSizeMake(width, MAXFLOAT) mode:NSLineBreakByWordWrapping].height;
}


@end
