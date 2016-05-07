//
//  SCMuStoryTabCell.h
//  iReader
//
//  Created by SevenCelsius on 16/5/7.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCBaseTableViewCell.h"

@class SCMuDetailModel;
@interface SCMuStoryTabCell : SCBaseTableViewCell

@property (nonatomic, strong) SCMuDetailModel *model;

+ (id) musicStorycellWithTableView:(UITableView *)tableView;

@end
