//
//  SCReadingModel.m
//  iReader
//
//  Created by SevenCelsius on 16/4/26.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCReadingModel.h"
#import "SCBaseContentModel.h"
#import "SCFactoryModel.h"

@implementation SCReadingModel

+ (id)readModelWithDict:(NSDictionary *)dict {
    
    SCReadingModel *model = [[SCReadingModel alloc] initWithDictionary:dict error:nil];
    
    NSMutableArray *arrM = [NSMutableArray arrayWithCapacity:0];
    for (NSDictionary *temp in model.items) {
        
        SCCellModel *cellModel = [SCCellModel cellModelWithDict:temp];
        [arrM addObject:cellModel];
    }
    
    model.items = arrM;

    
    return model;
    
}

@end

#pragma mark - cell 内容建模
@implementation SCCellModel

+ (id)cellModelWithDict:(NSDictionary *)dict {
    
    SCCellModel *model = [[SCCellModel alloc] initWithDictionary:dict error:nil];
    
    NSDictionary *diction = dict[@"content"];
    
    model.contentModel = [SCFactoryModel factoryConModelWithDict:diction Type:model.type];
    model.requestID = model.contentModel.detailID;
    
    return model;
    
}

@end