//
//  SCMusicModel.h
//  iReader
//
//  Created by SevenCelsius on 16/4/26.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCBaseModel.h"

@class SCAuthorModel;
@interface SCMusicModel : SCBaseModel

@property (nonatomic, copy) NSString<Ignore> *ID;

// 标题
@property (nonatomic, copy) NSString *title;

// 封面
@property (nonatomic, copy) NSString *cover;
@property (nonatomic, copy) NSString *isfirst;

// 故事标题
@property (nonatomic, copy) NSString *story_title;
// 故事
@property (nonatomic, copy) NSString *story;
// 歌词
@property (nonatomic, copy) NSString *lyric;

// 歌曲信息
@property (nonatomic, copy) NSString *info;
@property (nonatomic, copy) NSString *platform;

// 歌曲链接
@property (nonatomic, copy) NSString *music_id;

// 编辑
@property (nonatomic, copy) NSString *charge_edt;
// 点赞数
@property (nonatomic, copy) NSString *praisenum;
// 制作时间
@property (nonatomic, copy) NSString *maketime;
@property (nonatomic, copy) NSString *read_num;
@property (nonatomic, assign) NSInteger sharenum;
@property (nonatomic, assign) NSInteger commentnum;

@property (nonatomic, copy) SCAuthorModel<Ignore> *author;

+ (id)musicModelWithDict:(NSDictionary *)dict;

@end
