//
//  SCBannerModel.m
//  iReader
//
//  Created by SevenCelsius on 16/5/1.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCBannerModel.h"

@implementation SCBannerModel

+ (id)bannerModelWithDict:(NSDictionary *)dict {
    
    SCBannerModel *model = [[SCBannerModel alloc] initWithDictionary:dict error:nil];
    
    model.ID = dict[@"id"];
    
    return model;
}

@end
