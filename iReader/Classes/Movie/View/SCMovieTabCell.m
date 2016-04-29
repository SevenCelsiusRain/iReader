//
//  SCMovieTabCell.m
//  iReader
//
//  Created by SevenCelsius on 16/4/28.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCMovieTabCell.h"
#import "SCMovieModel.h"

@interface SCMovieTabCell ()


@property (weak, nonatomic) IBOutlet UIImageView *imgView;


@end

@implementation SCMovieTabCell

+ (id)movieTabCellWithTableView:(UITableView *)tableView {
    
    
    return [self tableCellWithTableView:tableView];
}

- (void)setMovieModel:(SCMovieModel *)movieModel {
    
    _movieModel = movieModel;
    
    [SCNetWorkImage setImageWithImageView:self.imgView urlStr:movieModel.cover plhImageType:PlhINillType];
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
