//
//  SCEssayModel.h
//  iReader
//
//  Created by SevenCelsius on 16/4/30.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCBaseContentModel.h"

@class SCAuthorModel;
@interface SCEssayModel : SCBaseContentModel

@property (nonatomic, copy) NSString<Optional> *content_id;
@property (nonatomic, copy) NSString<Optional> *hp_title;
@property (nonatomic, copy) NSString<Optional> *hp_makettime;
@property (nonatomic, copy) NSString<Optional> *guide_word;
@property (nonatomic, copy) NSString<Optional> *has_audio;

@property (nonatomic, strong) SCAuthorModel<Ignore> *authorModel;

+ essayModelWithDict:(NSDictionary *)dict;


@end
