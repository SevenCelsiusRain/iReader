//
//  SCHomeCollectionCell.m
//  iReader
//
//  Created by SevenCelsius on 16/4/26.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCHomeCollectionCell.h"
#import "SCHomeModel.h"

@interface SCHomeCollectionCell ()

// 标题
@property (weak, nonatomic) IBOutlet UILabel *titleLab;
// 作者
@property (weak, nonatomic) IBOutlet UILabel *authorLab;
// 时间
@property (weak, nonatomic) IBOutlet UILabel *timeLab;
// 内容
@property (weak, nonatomic) IBOutlet UILabel *contentLab;
// 图片
@property (weak, nonatomic) IBOutlet UIButton *imgBtn;
// 点赞
@property (weak, nonatomic) IBOutlet UIButton *praiseBtn;

@property (weak, nonatomic) IBOutlet UIView *bottomView;


@end

@implementation SCHomeCollectionCell

- (void)awakeFromNib {
    
    [super awakeFromNib];
}

// 模型与视图的结合
- (void)setHomeMdel:(SCHomeModel *)homeMdel {
    
    _homeMdel = homeMdel;
    
    [SCNetWorkImage setImageWithBtn:self.imgBtn urlStr:homeMdel.hp_img_url plhImageType:PlhINillType];
    self.titleLab.text = homeMdel.hp_title;
    self.timeLab.text = homeMdel.hp_makettime;
    self.contentLab.text = homeMdel.hp_content;
    [self.praiseBtn setTitle:[NSString stringWithFormat:@"%ld", homeMdel.praisenum] forState:UIControlStateNormal];
    self.authorLab.text = homeMdel.hp_author;
    
    self.bottomView.layer.borderWidth = 2;
    self.bottomView.layer.borderColor = [UIColor colorWithRed:201/225.f green:201/225.f blue:201/225.f alpha:1].CGColor;
    
    [SCNetWorkImage setImageWithBtn:self.imgBtn urlStr:homeMdel.hp_img_url plhImageType:PlhINillType];
    
}

// 图片
- (IBAction)imgBtnClick {
    
    
}

// 点赞
- (IBAction)praiseBtnClick {
    
    if (self.praiseBtn.isSelected == YES) {
        
        self.praiseBtn.selected = NO;
    }else {
        
        self.praiseBtn.selected = NO;
    }
    
}
// 小记
- (IBAction)diaryBtnClick:(id)sender {
}

// 分享
- (IBAction)shareBtnClick {
}


@end
