//
//  SCHomeModel.h
//  iReader
//
//  Created by SevenCelsius on 16/4/26.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCBaseModel.h"

@interface SCHomeModel : SCBaseModel

@property (nonatomic, copy) NSString *hp_title; // 标题
@property (nonatomic, copy) NSString *author_id;   // 作者id
@property (nonatomic, copy) NSString *hp_img_url;   // 图片链接
@property (nonatomic, copy) NSString *hp_author;    // 作者
@property (nonatomic, copy) NSString *hp_content;  // 内容
@property (nonatomic, copy) NSString *hp_makettime; // 制作时间
@property (nonatomic, assign) NSInteger praisenum;  // 标记人数
@property (nonatomic, assign) NSInteger sharenum;   // 分享次数
@property (nonatomic, assign) NSInteger commentnum; 

+ (id) homeModelWithDict:(NSDictionary *)dict;

@end
