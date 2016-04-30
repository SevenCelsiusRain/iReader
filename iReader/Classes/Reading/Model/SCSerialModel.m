//
//  SCSerialModel.m
//  iReader
//
//  Created by SevenCelsius on 16/4/30.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCSerialModel.h"
#import "SCAuthorModel.h"

@implementation SCSerialModel

+ (id)serialModelWithDict:(NSDictionary *)dict {
    
    SCSerialModel *model = [[SCSerialModel alloc] initWithDictionary:dict error:nil];
    model.ID = dict[@"id"];
    
    model.authorModel = [SCAuthorModel authorModelWithDict:dict[@"author"]];
    
    return model;
}

@end
