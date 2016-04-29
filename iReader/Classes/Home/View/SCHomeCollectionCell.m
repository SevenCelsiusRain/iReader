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



@end

@implementation SCHomeCollectionCell


- (void)setHomeMdel:(SCHomeModel *)homeMdel {
    
    _homeMdel = homeMdel;
    
    [SCNetWorkImage setImageWithBtn:self.imgBtn urlStr:homeMdel.hp_img_url plhImageType:PlhINillType];
    self.titleLab.text = homeMdel.hp_title;
    self.timeLab.text = homeMdel.hp_makettime;
    self.contentLab.text = homeMdel.hp_content;
    [self.praiseBtn setTitle:[NSString stringWithFormat:@"%ld", homeMdel.praisenum] forState:UIControlStateNormal];
    self.authorLab.text = homeMdel.hp_author;
    
}

// 图片
- (IBAction)imgBtnClick {
    
    
}

// 点赞
- (IBAction)praiseBtnClick {
}


// 小记
- (IBAction)diaryBtnClick:(id)sender {
}

// 分享
- (IBAction)shareBtnClick {
}


@end
