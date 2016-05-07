//
//  SCBaDetailTabCell.m
//  iReader
//
//  Created by SevenCelsius on 16/5/4.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCBaDetailTabCell.h"
#import "SCBannerDetailModel.h"

@interface SCBaDetailTabCell ()

@property (weak, nonatomic) IBOutlet UILabel *titleL;

@property (weak, nonatomic) IBOutlet UILabel *authorL;

@property (weak, nonatomic) IBOutlet UILabel *introL;
@end

@implementation SCBaDetailTabCell

+ (id)bannerDetailCellWithTableView:(UITableView *)tableView {
    
    
    return [self tableCellWithTableView:tableView];
}

- (void)setModel:(SCBannerDetailModel *)model {
    
    _model = model;
    
    self.titleL.text = model.title;
    self.authorL.text = model.author;
    self.introL.text = model.introduction;
    
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
