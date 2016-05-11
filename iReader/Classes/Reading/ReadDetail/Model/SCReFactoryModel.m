//
//  SCReFactoryModel.m
//  iReader
//
//  Created by SevenCelsius on 16/5/8.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCReFactoryModel.h"
#import "SCBaseContentModel.h"

#import "SCEsDetailModel.h"
#import "SCSeDetailModel.h"
#import "SCQuDetailModel.h"

@implementation SCReFactoryModel

+ (id)readingDetailFactoryModelWithDict:(NSDictionary *)dict type:(NSInteger)type {
    
    SCBaseContentModel *model;
    
    
    switch (type) {
            
        case 1:
        {
            SCEsDetailModel * essayModel = [SCEsDetailModel esDetailModelWithDict:dict];
            model = essayModel;
            break;
        }
            
        case 2:
        {
            SCSeDetailModel *serailModel = [SCSeDetailModel seDetailModelWithDict:dict];
            model = serailModel;
            break;
        }

        case 3:
        {
            SCQuDetailModel *questionModle = [SCQuDetailModel quDetailModelWithDict:dict];
            model = questionModle;
            break;
        }

        default:
            break;
    }
    
    return model;
    
}

@end
