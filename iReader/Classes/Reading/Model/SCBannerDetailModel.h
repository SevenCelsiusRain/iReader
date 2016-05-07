//
//  SCBannerDetailModel.h
//  iReader
//
//  Created by SevenCelsius on 16/5/4.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCBaseModel.h"

@interface SCBannerDetailModel : SCBaseModel

@property (nonatomic, copy) NSString<Optional> *item_id;
@property (nonatomic, copy) NSString<Optional> *title;
@property (nonatomic, copy) NSString<Optional> *introduction;
@property (nonatomic, copy) NSString<Optional> *author;
@property (nonatomic, copy) NSString<Optional> *web_url;
@property (nonatomic, copy) NSString<Optional> *type;

@property (nonatomic, assign) NSInteger number;


+ (id) bannerDetailModelWithDict:(NSDictionary *)dict;


@end
