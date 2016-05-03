//
//  SCModetailCell.h
//  iReader
//
//  Created by SevenCelsius on 16/5/3.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCBaseTableViewCell.h"

@class SCMoStoryModel;
@interface SCModetailCell : SCBaseTableViewCell

@property(nonatomic, strong) SCMoStoryModel *storyModel;

+ (id)movieDetailCellWithTableView:(UITableView *)tableView;

@end
