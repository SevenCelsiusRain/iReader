//
//  SCMuListColCell.m
//  iReader
//
//  Created by SevenCelsius on 16/4/28.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCMuListColCell.h"
#import "SCMuRelatedModel.h"
#import "SCAuthorModel.h"

@interface SCMuListColCell ()

@property (weak, nonatomic) IBOutlet UIImageView *coverImg;

@property (weak, nonatomic) IBOutlet UILabel *titleL;

@property (weak, nonatomic) IBOutlet UILabel *usrL;

@end

@implementation SCMuListColCell


- (void)setModel:(SCMuRelatedModel *)model {
    
    _model = model;
    
    self.titleL.text = model.title;
    SCAuthorModel *author = model.author;
    self.usrL.text = author.user_name;
    [SCNetWorkImage setImageWithImageView:self.coverImg urlStr:model.cover plhImageType:PlhINillType];
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
