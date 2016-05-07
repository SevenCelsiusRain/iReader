//
//  SCMuStoryTabCell.m
//  iReader
//
//  Created by SevenCelsius on 16/5/7.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCMuStoryTabCell.h"
#import "SCMuDetailModel.h"
#import "SCAuthorModel.h"

@interface SCMuStoryTabCell ()

@property (weak, nonatomic) IBOutlet UILabel *titleL;

@property (weak, nonatomic) IBOutlet UIButton *authorBtn;

@property (weak, nonatomic) IBOutlet UILabel *contentL;

@property (weak, nonatomic) IBOutlet UILabel *edtL;

@property (weak, nonatomic) IBOutlet UIButton *praiseBtn;

@property (weak, nonatomic) IBOutlet UIButton *commentBtn;

@property (weak, nonatomic) IBOutlet UIButton *shareBtn;

@end
@implementation SCMuStoryTabCell

+ (id)musicStorycellWithTableView:(UITableView *)tableView {
    
    
    return [self tableCellWithTableView:tableView];
}

- (void)setModel:(SCMuDetailModel *)model {
    
    _model = model;
    
    self.titleL.text = model.story_title;
    self.contentL.text = model.story;
    self.edtL.text = model.charge_edt;
    
    SCAuthorModel *author = model.author;
    [self.authorBtn setTitle:author.user_name forState:UIControlStateNormal];
    [self.praiseBtn setTitle:[NSString stringWithFormat:@"%ld", model.praisenum] forState:UIControlStateNormal];
    [self.commentBtn setTitle:[NSString stringWithFormat:@"%ld", model.commentnum] forState:UIControlStateNormal];
    [self.shareBtn setTitle:[NSString stringWithFormat:@"%ld", model.sharenum] forState:UIControlStateNormal];
    
}

- (IBAction)authorAction {
}

- (IBAction)praiseAction {
}

- (IBAction)commentAction {
}



@end
