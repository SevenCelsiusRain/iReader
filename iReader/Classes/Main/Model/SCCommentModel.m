//
//  SCCommentModel.m
//  iReader
//
//  Created by SevenCelsius on 16/5/3.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCCommentModel.h"
#import "SCUserModel.h"

@implementation SCCommentModel

+ (id)conmmentModelWithDict:(NSDictionary *)dict {
    
    SCCommentModel *model = [[SCCommentModel alloc] initWithDictionary:dict error:nil];
    
    model.ID = dict[@"id"];
    model.user = [SCUserModel userModelWithDict:dict[@"user"]];
    model.toUser = [SCUserModel userModelWithDict:dict[@"touser"]];
    
    return model;
    
}
@end
