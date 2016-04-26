//
//  SCNetWorkImage.h
//  iReader
//
//  Created by SevenCelsius on 16/4/25.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, PlhImageType){
    
    PlhINillType
};

@interface SCNetWorkImage : NSObject

+ (void) setImageWithImageView:(UIImageView *)imgView urlStr:(NSString *)urlStr plhImageType:(PlhImageType)type;

+ (void) setImageWithBtn:(UIButton *)btn urlStr:(NSString *)urlStr plhImageType:(PlhImageType)type;

@end
