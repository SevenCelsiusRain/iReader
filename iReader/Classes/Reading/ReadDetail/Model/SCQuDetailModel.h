//
//  SCQuDetailModel.h
//  iReader
//
//  Created by SevenCelsius on 16/5/2.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCQuestionModel.h"

@interface SCQuDetailModel : SCQuestionModel

@property (nonatomic, copy) NSString<Optional> *question_content;
@property (nonatomic, copy) NSString<Optional> *charge_edt;
@property (nonatomic, copy) NSString<Optional> *last_update_date;
@property (nonatomic, copy) NSString<Optional> *read_num;
@property (nonatomic, copy) NSString<Optional> *web_url;

@property (nonatomic, assign) NSInteger praisenum;
@property (nonatomic, assign) NSInteger sharenum;
@property (nonatomic, assign) NSInteger commentnum;


+ (id) quDetailModelWithDict:(NSDictionary *)dict;

@end
