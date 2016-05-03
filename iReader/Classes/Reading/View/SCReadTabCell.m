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
#import "SCAuthorModel.h"

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
            imgName = @"essay_image";
            title = model.hp_title;
            writerStr = model.authorModel.user_name;
            content = model.guide_word;
            break;
        }
            
        case 2:
        {
            SCSerialModel *model = (SCSerialModel *)cellModel.contentModel;
            imgName = @"serial_image";
            title = model.title;
            writerStr = model.authorModel.user_name;
            content = model.excerpt;
            break;
        }
            
        case 3:
        {
            
            SCQuestionModel *model = (SCQuestionModel *)cellModel.contentModel;
            imgName = @"question_image";
            title = model.question_title;
            writerStr = model.answer_title;
            content = model.answer_content;
            break;

        }
            
        default:
            break;
    }

    self.typeImg.image = [UIImage imageNamed:imgName];
    self.titleLab.text = title;
    self.writerLab.text = writerStr;
    self.contentLab.text = content;
    
}



@end
