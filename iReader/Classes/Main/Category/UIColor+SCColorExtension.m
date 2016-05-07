//
//  UIColor+SCColorExtension.m
//  iReader
//
//  Created by SevenCelsius on 16/5/5.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "UIColor+SCColorExtension.h"

@implementation UIColor (SCColorExtension)

+ (UIColor *)hexStringToRGB:(NSString *)hexStr {
    
    NSString *cStr = [[hexStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    if ([cStr length] < 6) return [UIColor blackColor];
    // strip 0X if it appears
    if ([cStr hasPrefix:@"0X"]) cStr = [cStr substringFromIndex:2];
    if ([cStr hasPrefix:@"#"]) cStr = [cStr substringFromIndex:1];
    if ([cStr length] != 6) return [UIColor blackColor];
    
    // Separate into r, g, b substrings
    
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cStr substringWithRange:range];
    range.location = 2;
    NSString *gString = [cStr substringWithRange:range];
    range.location = 4;
    NSString *bString = [cStr substringWithRange:range];
    // Scan values
    unsigned int r, g, b;
    
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:1.0f];
    
}


@end
