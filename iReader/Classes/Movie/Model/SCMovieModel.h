//
//  SCMovieModel.h
//  iReader
//
//  Created by SevenCelsius on 16/4/26.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCBaseModel.h"

@interface SCMovieModel : SCBaseModel

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *detailcover;
@property (nonatomic, copy) NSString *video;
@property (nonatomic, copy) NSString *score;
@property (nonatomic, copy) NSString *review;
@property (nonatomic, copy) NSString *keywords;
@property (nonatomic, copy) NSString *movie_id;
@property (nonatomic, copy) NSString *info;
@property (nonatomic, copy) NSString *officialstory;
@property (nonatomic, copy) NSString *charge_edt;
@property (nonatomic, copy) NSString *maketime;
@property (nonatomic, strong) NSArray *photo;

@end
