//
//  SCReadTabCell.m
//  iReader
//
//  Created by SevenCelsius on 16/4/28.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCReadTabCell.h"
#import "SCReadingModel.h"
#import "SCQuestionModel.h"
#import "SCSerialModel.h"
#import "SCEssayModel.h"

@interface SCReadTabCell ()

@property (weak, nonatomic) IBOutlet UIImageView *typeImg;

@property (weak, nonatomic) IBOutlet UILabel *titleLab;

@property (weak, nonatomic) IBOutlet UILabel *writerLab;

@property (weak, nonatomic) IBOutlet UILabel *contentLab;


@end

@implementation SCReadTabCell

+ (id)readCellWithTableView:(UITableView *)tableView {
    
    return [self tableCellWithTableView:tableView];
}


- (void)setCellModel:(SCCellModel *)cellModel {
    
    _cellModel = cellModel;
    
    NSString *imgName;
    NSString *title;
    NSString *writerStr;
    NSString *content;
    
    switch (cellModel.type) {
        case 1:
        {
            
            SCEssayModel *model = (SCEssayModel *)cellModel.contentModel;
            imgName = model.
            break;
        }
            
        case 2:
        {
            SCSerialModel *model = (SCSerialModel *)cellModel.contentModel;
            break;
        }
            
        case 3:
        {
            
            SCQuestionModel *model = (SCQuestionModel *)cellModel.contentModel;
            break;

        }
            
        default:
            break;
    }

    
}



@end
