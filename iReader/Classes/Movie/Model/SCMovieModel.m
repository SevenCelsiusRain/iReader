//
//  SCMovieModel.m
//  iReader
//
//  Created by SevenCelsius on 16/4/26.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCMovieModel.h"

@implementation SCMovieModel

+ (id)movieModelWithDict:(NSDictionary *)dict {
    
    SCMovieModel *model = [[SCMovieModel alloc] initWithDictionary:dict error:nil];
    
    model.ID = dict[@"id"];
    
    return model;
    
}


@end
