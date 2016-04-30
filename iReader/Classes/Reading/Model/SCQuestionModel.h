//
//  SCQuestionModel.h
//  iReader
//
//  Created by SevenCelsius on 16/4/30.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCBaseContentModel.h"

@interface SCQuestionModel : SCBaseContentModel

@property (nonatomic, copy) NSString<Optional> *question_id;
@property (nonatomic, copy) NSString<Optional> *question_title;
@property (nonatomic, copy) NSString<Optional> *answer_title;
@property (nonatomic, copy) NSString<Optional> *answer_content;
@property (nonatomic, copy) NSString<Optional> *question_makettime;

+ questionModelWithDict:(NSDictionary *)dict;

@end
