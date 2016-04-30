//
//  SCReadingModel.h
//  iReader
//
//  Created by SevenCelsius on 16/4/26.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCBaseModel.h"

@interface SCReadingModel : SCBaseModel

@property (nonatomic, strong) NSArray *data;

+ (id) readModelWithDict:(NSDictionary *)dict;

@end

/***
 组建模
 */
@interface SCSectionModel : SCBaseModel

@property (nonatomic, copy) NSString *date; // 时间
@property (nonatomic, strong) NSArray *items; // 组

+ (id) sectionModelWithDict:(NSDictionary *)dict;

@end

/***
 
 cell内容建模
 */
@class SCBaseContentModel;
@interface SCCellModel : SCBaseModel

@property (nonatomic, copy) NSString<Optional> *time;
@property (nonatomic, assign) NSInteger type;
@property (nonatomic, strong) SCBaseContentModel<Ignore> *contentModel;

+ (id) cellModelWithDict:(NSDictionary *)dict;

@end


