//
//  SCEsDetailModel.h
//  iReader
//
//  Created by SevenCelsius on 16/5/2.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCEssayModel.h"

@interface SCEsDetailModel : SCEssayModel

@property (nonatomic, copy) NSString<Optional> *sub_title;
@property (nonatomic, copy) NSString<Optional> *hp_author;
@property (nonatomic, copy) NSString<Optional> *auth_it;
@property (nonatomic, copy) NSString<Optional> *hp_author_introduce;
@property (nonatomic, copy) NSString<Optional> *hp_content;
@property (nonatomic, copy) NSString<Optional> *audio;
@property (nonatomic, assign) NSInteger praisenum;
@property (nonatomic, assign) NSInteger sharenum;
@property (nonatomic, assign) NSInteger commentnum;

+ (id) esDetailModelWithDict:(NSDictionary *)dict;
@end
