//
//  SCNetWorkImage.m
//  iReader
//
//  Created by SevenCelsius on 16/4/25.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCNetWorkImage.h"
#import "UIImageView+WebCache.h"
#import "UIButton+webCache.h"


@implementation SCNetWorkImage

+ (void)setImageWithImageView:(UIImageView *)imgView urlStr:(NSString *)urlStr plhImageType:(PlhImageType)type{
    
}

+ (void)setImageWithBtn:(UIButton *)btn urlStr:(NSString *)urlStr plhImageType:(PlhImageType)type{
    
    
}

+ (UIImage *) imageWithPlhImageType:(PlhImageType)type {
    
    UIImage *img;
    
    switch (type) {
        case PlhINillType:
            
            img = nil;
            break;
            
        default:
            break;
    }
    
    return img;
    
}

@end
