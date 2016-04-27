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
NSString * const reading = @"/reading/carousel/?";

// 音乐列表
NSString * const musicList = @"/music/idlist/0?";
// 音乐内容
NSString * const music = @"/music/detail/%ld?";

// 电影列表
NSString * const movieList = @"/movie/list/0?";
// 电影内容
NSString  * const movie = @"/movie/detail/50?";

@end
