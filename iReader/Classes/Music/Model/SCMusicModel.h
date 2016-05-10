//
//  SCMusicModel.h
//  iReader
//
//  Created by SevenCelsius on 16/4/26.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCBaseModel.h"

@class SCMuDetailModel;
@interface SCMusicModel : SCBaseModel

@property (nonatomic, copy) NSString<Ignore> *musicID;
@property (nonatomic, strong) SCMuDetailModel<Ignore> *detailModel;
@property (nonatomic, strong) NSMutableArray<Ignore> *relatedArrayM;
@property (nonatomic, strong) NSMutableArray<Ignore> *commentArrayM;

+ (void) musicModelWithStr:(NSString *)str musicModel:(void(^)(SCMusicModel *model))musicModel;
@end
