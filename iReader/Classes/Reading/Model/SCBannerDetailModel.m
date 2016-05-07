//
//  SCBannerDetailModel.m
//  iReader
//
//  Created by SevenCelsius on 16/5/4.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCBannerDetailModel.h"

@implementation SCBannerDetailModel

+ (id)bannerDetailModelWithDict:(NSDictionary *)dict {
    
    
    SCBannerDetailModel *model = [[SCBannerDetailModel alloc] initWithDictionary:dict error:nil];
    
    return model;
}

@end
