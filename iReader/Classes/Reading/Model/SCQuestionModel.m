//
//  SCQuestionModel.m
//  iReader
//
//  Created by SevenCelsius on 16/4/30.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCQuestionModel.h"

@implementation SCQuestionModel

+ (id)questionModelWithDict:(NSDictionary *)dict {
    
    SCQuestionModel *model = [[SCQuestionModel alloc] initWithDictionary:dict error:nil];
    
    return model;
    
}

@end
