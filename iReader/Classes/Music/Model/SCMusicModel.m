//
//  SCMusicModel.m
//  iReader
//
//  Created by SevenCelsius on 16/4/26.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCMusicModel.h"
#import "SCAuthorModel.h"

@implementation SCMusicModel

+ (id)musicModelWithDict:(NSDictionary *)dict {
    
    
    SCMusicModel *model = [[SCMusicModel alloc] initWithDictionary:dict error:nil];
    model.ID = dict[@"id"];
    model.author = [SCAuthorModel authorModelWithDict:dict[@"author"]];
    
    return model;
    
}

@end
