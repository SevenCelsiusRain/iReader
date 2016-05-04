//
//  UIButton+SCExtension.m
//  iReader
//
//  Created by SevenCelsius on 16/5/3.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "UIButton+SCExtension.h"

@implementation UIButton (SCExtension)

- (void)setNolImg:(NSString *)nolImgName selImg:(NSString *)selImgName isBackgroundImage:(BOOL)isBackgroundImage {
    
    if (isBackgroundImage) {
        
       
        [self setBackgroundImage:[UIImage imageNamed:nolImgName] forState:UIControlStateNormal];
        [self setBackgroundImage:[UIImage imageNamed:selImgName] forState:UIControlStateSelected];
    }else {
        
        [self setImage:[UIImage imageNamed:nolImgName] forState:UIControlStateNormal];
        [self setImage:[UIImage imageNamed:selImgName] forState:UIControlStateSelected];
        
    }
    
}

@end
