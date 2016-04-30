//
//  SCFactoryModel.m
//  iReader
//
//  Created by SevenCelsius on 16/4/30.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCFactoryModel.h"

#import "SCBaseContentModel.h"
#import "SCEssayModel.h"
#import "SCSerialModel.h"
#import "SCQuestionModel.h"

@implementation SCFactoryModel

+ (id) factoryConModelWithDict:(NSDictionary *)dict Type:(NSInteger) type {
    
    SCBaseContentModel *model;
    
    
    switch (type) {
        case 1:
            
            model = [SCEssayModel essayModelWithDict:dict];
            break;
            
        case 2:
            
            model = [SCSerialModel serialModelWithDict:dict];
            break;
            
        case 3:
            
            model = [SCQuestionModel questionModelWithDict:dict];
            break;
            
        default:
            break;
    }
    
    return model;
}

@end
