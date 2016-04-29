//
//  SCHomeModel.m
//  iReader
//
//  Created by SevenCelsius on 16/4/26.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCHomeModel.h"

@implementation SCHomeModel

+ (id)homeModelWithDict:(NSDictionary *)dict {
    
    SCHomeModel *model = [[SCHomeModel alloc] initWithDictionary:dict error:nil];
    
    return model;
    
}

@end
