//
//  SCMusicHeader.m
//  iReader
//
//  Created by SevenCelsius on 16/5/3.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCMusicHeader.h"
#import "SCMusicModel.h"
#import "SCAuthorModel.h"

@interface SCMusicHeader ()

@property (weak, nonatomic) IBOutlet UIImageView *coverImg;

@property (weak, nonatomic) IBOutlet UIButton *iconBtn;

@property (weak, nonatomic) IBOutlet UIButton *nameBtn;

@property (weak, nonatomic) IBOutlet UIButton *playBtn;

@property (weak, nonatomic) IBOutlet UILabel *descL;

@property (weak, nonatomic) IBOutlet UILabel *titleL;

@property (weak, nonatomic) IBOutlet UILabel *timeL;


@end

@implementation SCMusicHeader


+ (id)musicHeaderView {
    
    SCMusicHeader *view = [[[NSBundle mainBundle] loadNibNamed:@"" owner:nil options:nil] lastObject];
    
    
    return view;
    
    
}

- (void)setMusicModel:(SCMusicModel *)musicModel {
    
    _musicModel = musicModel;
    
    [SCNetWorkImage setImageWithImageView:self.coverImg urlStr:musicModel.cover plhImageType:PlhINillType];
    self.titleL.text = musicModel.title;
    self.timeL.text = musicModel.maketime;
    
    SCAuthorModel *author = musicModel.author;
    [self.nameBtn setTitle:author.user_name forState:UIControlStateNormal];
    self.descL.text = author.desc;
    
    [self.playBtn setImage:[UIImage imageNamed:@"play"] forState:UIControlStateNormal];
    [self.playBtn setImage:[UIImage imageNamed:@"pause"] forState:UIControlStateSelected];
    
}

- (IBAction)userAction {
    
    
    
}

- (IBAction)playAction {
    
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
