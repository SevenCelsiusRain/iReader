//
//  SCMuDetailModel.m
//  iReader
//
//  Created by SevenCelsius on 16/5/5.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCMuDetailModel.h"
#import "SCAuthorModel.h"

@implementation SCMuDetailModel

+ (id)musicDetailModelWithDict:(NSDictionary *)dict {
    
    
    SCMuDetailModel *model = [[SCMuDetailModel alloc] initWithDictionary:dict error:nil];
    model.ID = dict[@"id"];
    model.author = [SCAuthorModel authorModelWithDict:dict[@"author"]];
    
    return model;
    
}


@end
