//
//  SCSeDetailModel.h
//  iReader
//
//  Created by SevenCelsius on 16/5/2.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCSerialModel.h"

@interface SCSeDetailModel : SCSerialModel


@property (nonatomic, copy) NSString<Optional> *content;
@property (nonatomic, copy) NSString<Optional> *charge_edt;
@property (nonatomic, copy) NSString<Optional> *audio;
@property (nonatomic, copy) NSString<Optional> *last_update_name;

@property (nonatomic, assign) NSInteger praisenum;
@property (nonatomic, assign) NSInteger sharenum;
@property (nonatomic, assign) NSInteger commentnum;


+ (id) seDetailModelWithDict:(NSDictionary *)dict;


@end
