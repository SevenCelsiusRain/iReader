//
//  SCMuRelatedTabCell.h
//  iReader
//
//  Created by SevenCelsius on 16/5/7.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCBaseTableViewCell.h"

@interface SCMuRelatedTabCell : SCBaseTableViewCell

@property (nonatomic, strong)NSArray *dataSource;

+ (id)musicRelatedCellWithTableView:(UITableView *)tableView;

@end
