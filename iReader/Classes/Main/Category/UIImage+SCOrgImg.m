//
//  UIImage+SCOrgImg.m
//  iReader
//
//  Created by SevenCelsius on 16/4/27.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "UIImage+SCOrgImg.h"

@implementation UIImage (SCOrgImg)

- (UIImage *)originalImg {
    
    UIImage *image = self;
    
    if ([UIDevice currentDevice].systemVersion.floatValue >= 7.0) {
        
        image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
    }
    
    return image;
    
}

@end
