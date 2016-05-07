//
//  SCBaDetailTabCell.h
//  iReader
//
//  Created by SevenCelsius on 16/5/4.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCBaseTableViewCell.h"

@class SCBannerDetailModel;
@interface SCBaDetailTabCell : SCBaseTableViewCell

@property (nonatomic, strong) SCBannerDetailModel *model;

+ (id)bannerDetailCellWithTableView:(UITableView *)tableView;

@end
