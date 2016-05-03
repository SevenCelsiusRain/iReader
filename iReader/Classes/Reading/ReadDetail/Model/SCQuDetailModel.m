//
//  SCQuDetailModel.m
//  iReader
//
//  Created by SevenCelsius on 16/5/2.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCQuDetailModel.h"

@implementation SCQuDetailModel

+ (id)quDetailModelWithDict:(NSDictionary *)dict {
    
    
    SCQuDetailModel *model = [[SCQuDetailModel alloc] initWithDictionary:dict error:nil];
    
    return model;
    
}

@end
