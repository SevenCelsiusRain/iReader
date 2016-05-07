//
//  SCMuRelatedModel.h
//  iReader
//
//  Created by SevenCelsius on 16/5/5.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCBaseModel.h"

@class SCAuthorModel;
@interface SCMuRelatedModel : SCBaseModel

@property (nonatomic, copy) NSString<Ignore> *ID;
@property (nonatomic, copy) NSString<Optional> *title;
@property (nonatomic, copy) NSString<Optional> *cover;
@property (nonatomic, copy) NSString<Optional> *platform;
@property (nonatomic, copy) NSString<Optional> *music_id;

@property (nonatomic, strong) SCAuthorModel *author;

+ (id) musicRelatedModelWithDict:(NSDictionary *)dict;
@end
