//
//  SCNetAPI.m
//  iReader
//
//  Created by SevenCelsius on 16/4/24.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCNetAPI.h"

@implementation SCNetAPI

// 首页列表
NSString * const homeList = @"/hp/idlist/0";
// 首页内容
NSString * const homeDetail = @"/hp/detail/%@?";

// 阅读
NSString * const reading = @"/reading/index/%ld?";
// 阅读banner
NSString * const banner = @"/reading/carousel/?";
// banner 点击后详情
NSString * const bannerDetail = @"/reading/carousel/%@?";

// 连载内容
NSString * const serialContent = @"/serialcontent/%@?";
// 连载推荐
NSString * const serialRelated = @"/related/serial/%@?";
// 连载评论
NSString * const serialComment = @"/comment/praiseandtime/serial/%@/%ld?";


// 问答内容
NSString * const questionContent = @"/question/update/%@/0?";
// 问答推荐
NSString * const questionRelated = @"/related/question/%@?";
// 问答评论
NSString * const questionComment = @"/comment/praiseandtime/question/%@/%ld?";


// 短篇内容
NSString * const essayContent = @"/essay/%@?";
// 短篇推荐
NSString * const essayRelated = @"/related/essay/%@?";
// 短篇评论
NSString * const essayComment = @"/comment/praiseandtime/essay/%@/%ld?";


// 音乐列表
NSString * const musicList = @"/music/idlist/0?";
// 音乐内容
NSString * const musicDetail = @"/music/detail/%@?";
// 音乐评论
NSString * const musicComment = @"/comment/praiseandtime/music/%@/%ld?";
// 音乐推荐
NSString * const musicRelated = @"/related/music/%@?";

// 电影列表
NSString * const movieList = @"/movie/list/0?";
// 电影内容
NSString  * const movie = @"/movie/detail/50?";

@end
