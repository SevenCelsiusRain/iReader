//
//  SCBaseTableViewCell.m
//  iReader
//
//  Created by SevenCelsius on 16/4/24.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCBaseTableViewCell.h"

@implementation SCBaseTableViewCell


+ (id)tableCellWithTableView:(UITableView *)tableView {
    
    NSString *className = NSStringFromClass([self class]);
    
    UINib *nib = [UINib nibWithNibName:className bundle:nil];
    
    [tableView registerNib:nib forCellReuseIdentifier:className];
    
    SCBaseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:className];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
    
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
