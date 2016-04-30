//
//  SCEssayModel.m
//  iReader
//
//  Created by SevenCelsius on 16/4/30.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCEssayModel.h"
#import "SCAuthorModel.h"

@implementation SCEssayModel

+ (id)essayModelWithDict:(NSDictionary *)dict {
    
    SCEssayModel *model = [[SCEssayModel alloc] initWithDictionary:dict error:nil];
    
    model.authorModel = [SCAuthorModel authorModelWithDict:dict[@"author"]];
    
    return model;
    
}

@end
