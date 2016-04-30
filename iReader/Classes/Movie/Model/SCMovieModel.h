//
//  SCMovieModel.h
//  iReader
//
//  Created by SevenCelsius on 16/4/26.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCBaseModel.h"

@interface SCMovieModel : SCBaseModel

@property (nonatomic, copy) NSString<Ignore> *ID; // 影片id
@property (nonatomic, copy) NSString<Optional> *cover;    // 影片封面

@property (nonatomic, copy) NSString<Optional> *verse;
@property (nonatomic, copy) NSString<Optional> *verse_en;
@property (nonatomic, copy) NSString<Optional> *score;
@property (nonatomic, copy) NSString<Optional> *revisedscore;
@property (nonatomic, copy) NSString<Optional> *releasetime;
@property (nonatomic, copy) NSString<Optional> *scoretime;
@property (nonatomic, copy) NSString<Optional> *servertime;

+ (id) movieModelWithDict:(NSDictionary *)dict;

@end
