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
        {
            SCEssayModel *essayModel = [SCEssayModel essayModelWithDict:dict];
            model = essayModel;
            model.detailID = essayModel.content_id;
            break;
        }
        case 2:
        {
            SCSerialModel *serialModel = [SCSerialModel serialModelWithDict:dict];
            model = serialModel;
            model.detailID = serialModel.ID;
            break;
        }
        case 3:
        {
            SCQuestionModel *questionModel = [SCQuestionModel questionModelWithDict:dict];
            model = questionModel;
            model.detailID = questionModel.question_id;
            break;
        }
        default:
            break;
    }
    
    return model;
}

@end
