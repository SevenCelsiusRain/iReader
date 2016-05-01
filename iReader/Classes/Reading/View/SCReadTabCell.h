//
//  SCReadTabCell.h
//  iReader
//
//  Created by SevenCelsius on 16/4/28.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCBaseTableViewCell.h"

@class SCCellModel;
@interface SCReadTabCell : SCBaseTableViewCell

@property (nonatomic, strong) SCCellModel *cellModel;

+ (id) readCellWithTableView:(UITableView *)tableView;
@end
