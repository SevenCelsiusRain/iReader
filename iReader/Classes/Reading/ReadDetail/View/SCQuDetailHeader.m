//
//  SCQuDetailHeader.m
//  iReader
//
//  Created by SevenCelsius on 16/5/2.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCQuDetailHeader.h"
#import "SCQuDetailModel.h"

@interface SCQuDetailHeader ()

@property (weak, nonatomic) IBOutlet UILabel *titleL;

@property (weak, nonatomic) IBOutlet UILabel *contentL;

@property (weak, nonatomic) IBOutlet UILabel *answerTitleL;

@property (weak, nonatomic) IBOutlet UILabel *timeL;

@property (weak, nonatomic) IBOutlet UILabel *answerContentL;

@property (weak, nonatomic) IBOutlet UILabel *edtL;

@end

@implementation SCQuDetailHeader

+ (id)quHeaderView {
    
    SCQuDetailHeader *view = [[[NSBundle mainBundle] loadNibNamed:@"SCQuDetailHeader" owner:nil options:nil] lastObject];
    
    return view;
    
    
}


- (void)setModel:(SCBaseContentModel *)model {
    
    _model = model;
    SCQuDetailModel *quDetailModel = (SCQuDetailModel *)model;
    
    self.titleL.text = quDetailModel.question_title;
    self.contentL.text = quDetailModel.question_content;
    self.answerTitleL.text = quDetailModel.answer_title;
    self.answerContentL.text = quDetailModel.answer_content;
    self.timeL.text = quDetailModel.question_makettime;
    self.edtL.text = quDetailModel.charge_edt;
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
