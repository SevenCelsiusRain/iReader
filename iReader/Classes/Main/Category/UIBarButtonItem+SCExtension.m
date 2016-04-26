//
//  UIBarButtonItem+SCExtension.m
//  iReader
//
//  Created by SevenCelsius on 16/4/25.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "UIBarButtonItem+SCExtension.h"

@implementation UIBarButtonItem (SCExtension)

+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image hihImage:(NSString *)hihImage{
    
    UIButton *btn = [[UIButton alloc] init];
    [btn setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:hihImage] forState:UIControlStateHighlighted];
    
    CGSize size = btn.currentImage.size;
    btn.bounds = CGRectMake(0, 0, size.width, size.height);
    
    [btn addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:btn];
    
    return item;
    
}
@end
