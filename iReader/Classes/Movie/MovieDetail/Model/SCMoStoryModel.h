//
//  SCMoStoryModel.h
//  iReader
//
//  Created by SevenCelsius on 16/5/3.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCBaseModel.h"

@class SCUserModel;
@interface SCMoStoryModel : SCBaseModel

@property (nonatomic, copy) NSString<Ignore> *ID;

@property (nonatomic, copy) NSString<Optional> *movie_id;

@property (nonatomic, copy) NSString<Optional> *title; // 标题
@property (nonatomic, copy) NSString<Optional> *content;    // 内容
@property (nonatomic, copy) NSString<Optional> *user_id;
@property (nonatomic, copy) NSString<Optional> *sort;
@property (nonatomic, copy) NSString<Optional> *input_date; // 时间
@property (nonatomic, copy) NSString<Optional> *story_type;
@property (nonatomic, assign) NSInteger praisenum;      // 点赞数

@property (nonatomic, strong) SCUserModel<Ignore> *user;
@property (nonatomic, copy) NSString<Ignore> *count;

+ movieStroyModelWithDict:(NSDictionary *)dict;

@end
