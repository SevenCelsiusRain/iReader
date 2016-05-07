//
//  SCMuRelatedModel.m
//  iReader
//
//  Created by SevenCelsius on 16/5/5.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCMuRelatedModel.h"
#import "SCAuthorModel.h"

@implementation SCMuRelatedModel

+ (id)musicRelatedModelWithDict:(NSDictionary *)dict {
    
    SCMuRelatedModel *model = [[SCMuRelatedModel alloc] initWithDictionary:dict error:nil];
    
    model.ID = dict[@"id"];
    model.author = [SCAuthorModel authorModelWithDict:dict[@"author"]];
    
    return model;
    
}
@end
