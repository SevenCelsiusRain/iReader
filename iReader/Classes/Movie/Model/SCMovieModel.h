//
//  SCMovieModel.h
//  iReader
//
//  Created by SevenCelsius on 16/4/26.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCBaseModel.h"

@interface SCMovieModel : SCBaseModel

@property (nonatomic, copy) NSString<Ignore> *ID;
@property (nonatomic, copy) NSString *cover;


+ (id) movieModelWithDict:(NSDictionary *)dict;

@end
