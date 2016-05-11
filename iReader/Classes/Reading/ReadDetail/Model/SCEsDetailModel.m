//
//  SCEsDetailModel.m
//  iReader
//
//  Created by SevenCelsius on 16/5/2.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCEsDetailModel.h"
#import "SCAuthorModel.h"

@implementation SCEsDetailModel

+ (id)esDetailModelWithDict:(NSDictionary *)dict {
    
    SCEsDetailModel *model = [[SCEsDetailModel alloc] initWithDictionary:dict error:nil];
    model.authorModel = [SCAuthorModel authorModelWithDict:dict[@"author"]];
    
    model.hp_makettime = [model.hp_makettime substringToIndex:10];
    return model;
}

@end
