//
//  SCMoDetailHeader.m
//  iReader
//
//  Created by SevenCelsius on 16/5/3.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCMoDetailHeader.h"
#import "SCMoDetailModel.h"

@interface SCMoDetailHeader ()

@property (weak, nonatomic) IBOutlet UIButton *coverBtn;


@end

@implementation SCMoDetailHeader


+ (id)movieDetailHeaderView {
    
    
    SCMoDetailHeader *view = [[[NSBundle mainBundle] loadNibNamed:@"SCMoDetailHeader" owner:nil options:nil] lastObject];
    
    return view;
    
}


- (void)setModel:(SCMoDetailModel *)model {
    
    _model = model;
    
    [SCNetWorkImage setImageWithBtn:self.coverBtn urlStr:model.detailcover plhImageType:PlhINillType];
    
}

/***
 
 买票
 */
- (IBAction)buyTicket {
}

/***
 
 打分
 */
- (IBAction)scoreAction {
}

/***
 分享
 */
- (IBAction)shareAction:(id)sender {
}

/***
 
 播放
 */
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
