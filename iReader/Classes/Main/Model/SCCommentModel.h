//
//  SCCommentModel.h
//  iReader
//
//  Created by SevenCelsius on 16/5/3.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCBaseModel.h"

@class SCUserModel;
@interface SCCommentModel : SCBaseModel

@property (nonatomic, copy) NSString<Ignore> *ID;
@property (nonatomic, copy) NSString<Optional> *quote;
@property (nonatomic, copy) NSString<Optional> *content;
@property (nonatomic, copy) NSString<Optional> *input_date;
@property (nonatomic, assign) NSInteger praisenum;
@property (nonatomic, assign) NSInteger type;

@property (nonatomic, strong) SCUserModel<Ignore> *user;
@property (nonatomic, strong) SCUserModel<Ignore> *toUser;

+ conmmentModelWithDict:(NSDictionary *)dict;

@end
