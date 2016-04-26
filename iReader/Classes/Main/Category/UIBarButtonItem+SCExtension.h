//
//  UIBarButtonItem+SCExtension.h
//  iReader
//
//  Created by SevenCelsius on 16/4/25.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (SCExtension)

+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image hihImage:(NSString *)hihImage;

@end
