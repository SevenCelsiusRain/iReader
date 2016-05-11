//
//  SCSeDetailModel.m
//  iReader
//
//  Created by SevenCelsius on 16/5/2.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCSeDetailModel.h"
#import "SCAuthorModel.h"

@implementation SCSeDetailModel

+ (id)seDetailModelWithDict:(NSDictionary *)dict {
    
    SCSeDetailModel *model = [[SCSeDetailModel alloc] initWithDictionary:dict error:nil];
    
    model.maketime = [model.maketime substringToIndex:10];
    model.authorModel = [SCAuthorModel authorModelWithDict:dict[@"author"]];
    model.ID = dict[@"id"];
    
    return model;
    
}

@end
