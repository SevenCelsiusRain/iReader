//
//  SCDetailMovieModel.h
//  iReader
//
//  Created by SevenCelsius on 16/5/11.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@class SCMoDetailModel, SCMoStoryModel;
@interface SCDetailMovieModel : JSONModel

@property (nonatomic, strong) SCMoDetailModel<Ignore> *headerModel;
@property (nonatomic, strong) SCMoStoryModel<Ignore> *storyModel;
@property (nonatomic, strong) NSMutableArray<Ignore> *commentM;

+ (void) movieDetailModelWithMovieID:(NSString *)movieID detailMovieModel:(void(^)(SCDetailMovieModel *movieModel))detailMovieModel;

@end
