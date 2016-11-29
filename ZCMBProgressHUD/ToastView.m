//
//  ToastView.m
//  ZCMBProgressHUD
//
//  Created by 赵琛 on 2016/11/28.
//  Copyright © 2016年 赵琛. All rights reserved.
//

#import "ToastView.h"
#import "NSString+Drawing.h"

#define kFontSize 15.0

#define kRadius 30

@interface ToastView ()

@end

@implementation ToastView

- (instancetype)initWithText:(NSString *)text
{
    self = [super init];
    if (self) {
       
        //产品规定最多显示3行提示
        CGSize size = [UIScreen mainScreen].bounds.size;
        CGFloat fontSize = kFontSize,radius = kRadius,height = radius * 2;
        CGFloat maxWidth = size.width - 40 * 2;
        CGSize textSize = [text sizeForFont:[UIFont systemFontOfSize:fontSize] size:CGSizeMake(maxWidth, fontSize * 3)];
        
        height = height > textSize.height ? height : textSize.height + fontSize;
        
        self.frame = CGRectMake(0, 0, textSize.width + 30 * 2, height);
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.7];
        self.layer.cornerRadius = radius;
        self.clipsToBounds = YES;
        
        
        UILabel *textLabel = [[UILabel alloc] initWithFrame:CGRectMake(30, 0, textSize.width, height)];
        textLabel.backgroundColor = [UIColor clearColor];
        textLabel.textAlignment = NSTextAlignmentCenter;
        textLabel.numberOfLines = 0;
        textLabel.font = [UIFont systemFontOfSize:fontSize];
        textLabel.text = text;
        textLabel.textColor = [UIColor whiteColor];
        [self addSubview:textLabel];
    }
    return self;
}


/**
 You need to create a new UIView subclass and override its intrinsicContentSize method
 
 固有大小。顾名思义，在AutoLayout中，它作为UIView的属性，意思就是说我知道自己的大小，如果你没有为我指定大小，我就按照这个大小来

 @return size
 */

- (CGSize)intrinsicContentSize
{
    return CGSizeMake(self.frame.size.width, self.frame.size.height);
}

@end
