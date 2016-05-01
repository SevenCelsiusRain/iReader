//
//  SCBannerModel.h
//  iReader
//
//  Created by SevenCelsius on 16/5/1.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCBaseModel.h"

@interface SCBannerModel : SCBaseModel

@property (nonatomic, copy) NSString<Ignore> *ID;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *cover;
@property (nonatomic, copy) NSString *bottom_text;
@property (nonatomic, copy) NSString *bgcolor;
@property (nonatomic, copy) NSString *pv_url;

+ bannerModelWithDict:(NSDictionary *)dict;

@end
