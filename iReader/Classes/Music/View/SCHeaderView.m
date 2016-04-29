//
//  SCHeaderView.m
//  iReader
//
//  Created by SevenCelsius on 16/4/28.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCHeaderView.h"

@interface SCHeaderView ()

// 封面图片
@property (weak, nonatomic) IBOutlet UIImageView *coverImg;

// 头像
@property (weak, nonatomic) IBOutlet UIButton *iconBtn;

// 用户名
@property (weak, nonatomic) IBOutlet UIButton *userBtn;

// 用户描述
@property (weak, nonatomic) IBOutlet UILabel *descL;
// 歌曲名
@property (weak, nonatomic) IBOutlet UILabel *musicNameL;

@property (weak, nonatomic) IBOutlet UIButton *playBtn;
// 播放暂停
@property (weak, nonatomic) IBOutlet UILabel *timeL;

// 提示
@property (weak, nonatomic) IBOutlet UILabel *tips;

// 故事标题
@property (weak, nonatomic) IBOutlet UILabel *storyTitleL;

// 故事作者
@property (weak, nonatomic) IBOutlet UIButton *storyAuL;

// 内容
@property (weak, nonatomic) IBOutlet UILabel *contentL;

// 责任编辑
@property (weak, nonatomic) IBOutlet UILabel *edtL;

// 点赞
@property (weak, nonatomic) IBOutlet UIButton *praiseBtn;

// 评论
@property (weak, nonatomic) IBOutlet UIButton *comBtn;

// 分享
@property (weak, nonatomic) IBOutlet UIButton *shareBtn;

// 相似歌曲
@property (weak, nonatomic) IBOutlet UILabel *relateListL;


@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;


@end

@implementation SCHeaderView

// 头像
- (IBAction)iconBtnClick {
    
}

// 演唱者
- (IBAction)userBtnClick {
    
    
}

// 播放暂停
- (IBAction)playBtnClick {
}

// 故事
- (IBAction)storyBtnClick {
}

// 歌词
- (IBAction)lyricBtnClick {
}

// 歌曲信息
- (IBAction)infoBtnClick {
}

// 故事作者跳转
- (IBAction)storyAuLBtnClick {
}

- (IBAction)playListBtnClick:(id)sender {
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
