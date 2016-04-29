//
//  SCMovieTabCell.h
//  iReader
//
//  Created by SevenCelsius on 16/4/28.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCBaseTableViewCell.h"

@class SCMovieModel;

@interface SCMovieTabCell : SCBaseTableViewCell

@property (nonatomic, strong) SCMovieModel *movieModel;

+ (id) movieTabCellWithTableView:(UITableView *)tableView;

@end
