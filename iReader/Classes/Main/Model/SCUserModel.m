//
//  SCUserModel.m
//  iReader
//
//  Created by SevenCelsius on 16/5/3.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCUserModel.h"

@implementation SCUserModel

+ (id)userModelWithDict:(NSDictionary *)dict {
    
    SCUserModel *model = [[SCUserModel alloc] initWithDictionary:dict error:nil];
    
    return model;
}
@end
