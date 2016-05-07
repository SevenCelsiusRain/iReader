//
//  SCNetAPI.h
//  iReader
//
//  Created by SevenCelsius on 16/4/24.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SCNetAPI : NSObject

// 首页列表
extern NSString * const homeList;
// 首页内容
extern NSString * const homeDetail;

// 阅读
extern NSString * const reading;
// 阅读banner
extern NSString * const banner;
// banner 点击后详情
extern NSString * const bannerDetail;
// 连载内容
extern NSString * const serialContent;
// 连载推荐
extern NSString * const serialRelated;
// 连载评论
extern NSString * const serialComment;


// 问答内容
extern NSString * const questionContent;
// 问答推荐
extern NSString * const questionRelated;
// 问答评论
extern NSString * const questionComment;


// 短篇内容
extern NSString * const essayContent;
// 短篇推荐
extern NSString * const essayRelated;
// 短篇评论
extern NSString * const essayComment;


// 音乐列表
extern NSString * const musicList;
// 音乐内容
extern NSString * const musicDetail;
// 音乐评论
extern NSString * const musicComment;
// 音乐推荐
extern NSString * const musicRelated;

// 电影列表
extern NSString * const movieList;
// 电影内容
extern NSString * const movieDetail;


@end
