//
//  SCOtherHeader.m
//  iReader
//
//  Created by SevenCelsius on 16/5/2.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCOtherHeader.h"

#import "SCAuthorModel.h"
#import "SCEsDetailModel.h"
#import "SCSeDetailModel.h"

@interface SCOtherHeader ()

@property (weak, nonatomic) IBOutlet UIButton *iconBtn;

@property (weak, nonatomic) IBOutlet UIButton *userNameBtn;

@property (weak, nonatomic) IBOutlet UILabel *timeL;

@property (weak, nonatomic) IBOutlet UIButton *optionBtn;

@property (weak, nonatomic) IBOutlet UILabel *titleL;

@property (weak, nonatomic) IBOutlet UILabel *contentL;

@property (weak, nonatomic) IBOutlet UILabel *edtL;

@property (weak, nonatomic) IBOutlet UIButton *btomIconBtn;

@property (weak, nonatomic) IBOutlet UIButton *btoNameBtn;

@property (weak, nonatomic) IBOutlet UILabel *userDescL;

@end

@implementation SCOtherHeader


+ (id)otherHeaderView {
    
    SCOtherHeader *view = [[[NSBundle mainBundle] loadNibNamed:@"SCOtherHeader" owner:nil options:nil] lastObject];
    
    return view;
    
}

- (void)setModel:(SCBaseContentModel *)model {
    
    
    _model = model;
    
   
    NSString *time;
    NSString *title;
    NSString *content;
    NSString *edt;
    SCAuthorModel *author;
    if (self.type == 1) {
        
        SCEsDetailModel *essayModel = (SCEsDetailModel *)model;
        author = essayModel.authorModel;
        time = essayModel.hp_makettime;
        title = essayModel.hp_title;
        content = essayModel.hp_content;
        edt = essayModel.hp_author_introduce;
        
    }else {
        
        SCSeDetailModel *serialModel = (SCSeDetailModel *)model;
        author = serialModel.authorModel;
        time = serialModel.maketime;
        title = serialModel.title;
        content = serialModel.content;
        edt = serialModel.charge_edt;
    }
    
    
    self.titleL.text = title;
    self.timeL.text = time;
    self.edtL.text = edt;
    self.contentL.text = content;
    [SCNetWorkImage setImageWithBtn:self.iconBtn urlStr:author.web_url plhImageType:PlhINillType];
    [SCNetWorkImage setImageWithBtn:self.btoNameBtn urlStr:author.web_url plhImageType:PlhINillType];
    self.userDescL.text = author.desc;
    [self.userNameBtn setTitle:author.user_name forState:UIControlStateNormal];
    [self.btoNameBtn setTitle:author.user_name forState:UIControlStateNormal];
}

- (IBAction)btnClick {
    
    
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
