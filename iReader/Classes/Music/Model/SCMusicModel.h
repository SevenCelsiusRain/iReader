//
//  SCMusicModel.h
//  iReader
//
//  Created by SevenCelsius on 16/4/26.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCBaseModel.h"

@interface SCMusicModel : SCBaseModel

@property (nonatomic, copy) NSString<Ignore> *ID;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *cover;
@property (nonatomic, copy) NSString *isfirst;
@property (nonatomic, copy) NSString *story_title;
@property (nonatomic, copy) NSString *story;
@property (nonatomic, copy) NSString *lyric;
@property (nonatomic, copy) NSString *info;
@property (nonatomic, copy) NSString *platform;
@property (nonatomic, copy) NSString *music_id;
@property (nonatomic, copy) NSString *charge_edt;
@property (nonatomic, copy) NSString *praisenum;
@property (nonatomic, copy) NSString *maketime;
@property (nonatomic, copy) NSString *read_num;
@property (nonatomic, copy) NSString *sharenum;
@property (nonatomic, copy) NSString *commentnum;

@property (nonatomic, copy) NSDictionary *author;
@property (nonatomic, copy) NSString *user_id;
@property (nonatomic, copy) NSString *user_name;
@property (nonatomic, copy) NSString *desc;


//@property (nonatomic, copy) NSDictionary *story_author;
//@property (nonatomic, copy) NSString *

@end
