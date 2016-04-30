//
//  SCMoDetailModel.m
//  iReader
//
//  Created by SevenCelsius on 16/4/29.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCMoDetailModel.h"

@implementation SCMoDetailModel

+ (id)moDetailModelWithDict:(NSDictionary *)dict {
    
    SCMoDetailModel *model = [[SCMoDetailModel alloc] initWithDictionary:dict error:nil];
    
    model.ID = dict[@"id"];
    return model;
    
}

@end
