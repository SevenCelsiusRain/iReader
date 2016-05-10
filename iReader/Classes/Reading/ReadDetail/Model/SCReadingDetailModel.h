//
//  SCReadingDetailModel.h
//  iReader
//
//  Created by SevenCelsius on 16/5/8.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@class SCBaseContentModel;
@interface SCReadingDetailModel : JSONModel

@property (nonatomic, strong) SCBaseContentModel<Ignore> *headerModel;
@property (nonatomic, strong) NSMutableArray<Ignore> *relatedM;
@property (nonatomic, strong) NSMutableArray<Ignore> *commentM;

+ (void) readingDetailModelWithReadingID:(NSString *)readingID type:(NSInteger)type model:(void (^)(SCReadingDetailModel *detailModel))model;

@end
