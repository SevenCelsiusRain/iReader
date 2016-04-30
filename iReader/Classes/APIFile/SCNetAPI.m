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
NSString * const homeDetail = @"/hp/detail/%ld?";

// 阅读
NSString * const reading = @"/reading/index/0?";
// 阅读banner
NSString * const banner = @"/reading/carousel/?";

// 连载内容
NSString * const serialContent = @"/serialcontent/%ld?";
// 连载推荐
NSString * const serialRelated = @"/related/serial/%ld?";
// 连载评论
NSString * const serialComment = @"/comment/praiseandtime/serial/%ld/%ld?";


// 问答内容
NSString * const questionContent = @"/question/update/%ld/2016-04-29%2011:52:40?";
// 问答推荐
NSString * const questionRelated = @"/related/question/%ld?";
// 问答评论
NSString * const questionComment = @"/comment/praiseandtime/question/%ld/%ld?";


// 短篇内容
NSString * const essayContent = @"/essay/%ld?";
// 短篇推荐
NSString * const essayRelated = @"/related/essay/%ld?";
// 短篇评论
NSString * const essayComment = @"/comment/praiseandtime/essay/%ld/%ld?";


// 音乐列表
NSString * const musicList = @"/music/idlist/0?";
// 音乐内容
NSString * const music = @"/music/detail/%ld?";

// 电影列表
NSString * const movieList = @"/movie/list/0?";
// 电影内容
NSString  * const movie = @"/movie/detail/50?";

@end
