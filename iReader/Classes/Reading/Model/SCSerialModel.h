//
//  SCSerialModel.h
//  iReader
//
//  Created by SevenCelsius on 16/4/30.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCBaseContentModel.h"

@class SCAuthorModel;
@interface SCSerialModel : SCBaseContentModel

@property (nonatomic, copy) NSString<Ignore> *ID;
@property (nonatomic, copy) NSString<Optional> *serial_id;
@property (nonatomic, copy) NSString<Optional> *number;
@property (nonatomic, copy) NSString<Optional> *title;
@property (nonatomic, copy) NSString<Optional> *excerpt;
@property (nonatomic, copy) NSString<Optional> *read_num;
@property (nonatomic, copy) NSString<Optional> *maketime;
@property (nonatomic, copy) NSString<Optional> *has_audio;

@property (nonatomic, strong) SCAuthorModel<Ignore> *authorModel;

+ serialModelWithDict:(NSDictionary *)dict;

@end
