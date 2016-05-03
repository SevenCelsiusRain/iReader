//
//  SCMoStoryModel.m
//  iReader
//
//  Created by SevenCelsius on 16/5/3.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCMoStoryModel.h"
#import "SCUserModel.h"

@implementation SCMoStoryModel

+ (id)movieStroyModelWithDict:(NSDictionary *)dict {
    
    SCMoStoryModel *model = [[SCMoStoryModel alloc] initWithDictionary:dict error:nil];
    
    model.ID = dict[@"id"];
    model.user = [SCUserModel userModelWithDict:dict[@"user"]];
    
    return model;
    
}

@end
