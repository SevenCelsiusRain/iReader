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

// 表题
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
@property (nonatomic, copy) NSString *sharenum;
@property (nonatomic, copy) NSString *commentnum;

@property (nonatomic, copy) NSDictionary *author;
@property (nonatomic, copy) NSString *user_id;
@property (nonatomic, copy) NSString *user_name;
@property (nonatomic, copy) NSString *desc;


//@property (nonatomic, copy) NSDictionary *story_author;
//@property (nonatomic, copy) NSString *

@end
