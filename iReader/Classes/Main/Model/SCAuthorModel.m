//
//  SCAuthorModel.m
//  iReader
//
//  Created by SevenCelsius on 16/4/30.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCAuthorModel.h"

@implementation SCAuthorModel

+ (id)authorModelWithDict:(NSDictionary *)dict {
    
    SCAuthorModel *model = [[SCAuthorModel alloc] initWithDictionary:dict error:nil];
    
    
    return model;
    
}
@end
