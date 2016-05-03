//
//  SCModetailCell.m
//  iReader
//
//  Created by SevenCelsius on 16/5/3.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCModetailCell.h"
#import "SCMoStoryModel.h"
#import "SCUserModel.h"

@interface SCModetailCell ()

@property (weak, nonatomic) IBOutlet UIButton *iconBtn;

@property (weak, nonatomic) IBOutlet UIButton *userBtn;

@property (weak, nonatomic) IBOutlet UIButton *praiseBtn;

@property (weak, nonatomic) IBOutlet UILabel *timeL;

@property (weak, nonatomic) IBOutlet UILabel *contentL;

@property (weak, nonatomic) IBOutlet UILabel *tipsL;

@property (weak, nonatomic) IBOutlet UILabel *titleL;


@end

@implementation SCModetailCell

+ (id)movieDetailCellWithTableView:(UITableView *)tableView {
    
    
    return [self tableCellWithTableView:tableView];
}



- (void)setStoryModel:(SCMoStoryModel *)storyModel {
    
    _storyModel = storyModel;
    
    self.timeL.text = storyModel.input_date;
    self.tipsL.text =  storyModel.count;
    self.contentL.text = storyModel.content;
    self.titleL.text = storyModel.title;
    
    [self.praiseBtn setTitle:[NSString stringWithFormat:@"%ld", storyModel.praisenum] forState:UIControlStateNormal];
    
    SCUserModel *userModel = storyModel.user;
    [self.userBtn setTitle:userModel.user_name forState:UIControlStateNormal];
    [SCNetWorkImage setImageWithBtn:self.iconBtn urlStr:userModel.web_url plhImageType:PlhINillType];
    
}

- (IBAction)userAction {
    
    
    
}


- (IBAction)allStory {
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
