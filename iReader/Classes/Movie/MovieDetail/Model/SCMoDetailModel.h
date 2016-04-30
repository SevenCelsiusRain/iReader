//
//  SCMoDetailModel.h
//  iReader
//
//  Created by SevenCelsius on 16/4/29.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCMovieModel.h"

@interface SCMoDetailModel : SCMovieModel

@property (nonatomic, copy) NSString<Optional> *indexcover;
@property (nonatomic, copy) NSString<Optional> *detailcover; // 详情封面
@property (nonatomic, copy) NSString<Optional> *video;  // 预告片
@property (nonatomic, copy) NSString<Optional> *review;
@property (nonatomic, copy) NSString<Optional> *keywords;   // 关键词
@property (nonatomic, copy) NSString<Optional> *movie_id;
@property (nonatomic, copy) NSString<Optional> *info;   // 影片信息
@property (nonatomic, copy) NSString<Optional> *officialstory;  // 官方影片故事
@property (nonatomic, copy) NSString<Optional> *charge_edt; // 责任编辑
@property (nonatomic, copy) NSString<Optional> *maketime;   // 制作时间
@property (nonatomic, strong) NSArray<Optional> *photo;     // 剧照

@property (nonatomic, assign) NSInteger praisenum;  // 点赞次数
@property (nonatomic, assign) NSInteger sharenum;   // 分享次数
@property (nonatomic, assign) NSInteger commentnum; // 评论次数


+ (id) moDetailModelWithDict:(NSDictionary *)dict;

@end
