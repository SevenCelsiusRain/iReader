//
//  SCCommentTabCell.h
//  iReader
//
//  Created by SevenCelsius on 16/5/2.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCBaseTableViewCell.h"

@class SCCommentModel;
@interface SCCommentTabCell : SCBaseTableViewCell

@property (nonatomic, strong) SCCommentModel *commentModel;

+ (id) commentTabCellWithTableView:(UITableView *)tableView;

@end
