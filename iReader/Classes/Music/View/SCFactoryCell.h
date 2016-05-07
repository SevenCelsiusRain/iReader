//
//  SCFactoryCell.h
//  iReader
//
//  Created by SevenCelsius on 16/5/7.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SCFactoryCell : NSObject

+ (id)factoryCellWithTableView:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath dataArray:(NSArray *)dataArray;;

@end
