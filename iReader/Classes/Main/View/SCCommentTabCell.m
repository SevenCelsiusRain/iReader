//
//  SCCommentTabCell.m
//  iReader
//
//  Created by SevenCelsius on 16/5/2.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCCommentTabCell.h"

@interface SCCommentTabCell ()

// 头像
@property (weak, nonatomic) IBOutlet UIButton *iconBtn;
// 用户名
@property (weak, nonatomic) IBOutlet UIButton *userNameL;
// 时间
@property (weak, nonatomic) IBOutlet UILabel *timeL;

// 分数
@property (weak, nonatomic) IBOutlet UILabel *scoreL;

// 点赞数
@property (weak, nonatomic) IBOutlet UIButton *praiseBtn;

// 评论内容
@property (weak, nonatomic) IBOutlet UILabel *contentL;

@end

@implementation SCCommentTabCell

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
