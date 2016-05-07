//
//  SCFactoryCell.m
//  iReader
//
//  Created by SevenCelsius on 16/5/7.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCFactoryCell.h"
#import "SCBaseTableViewCell.h"

#import "SCCommentTabCell.h"
#import "SCMuStoryTabCell.h"
#import "SCMuRelatedTabCell.h"

#import "SCCommentModel.h"

@implementation SCFactoryCell

+ (id)factoryCellWithTableView:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath dataArray:(NSArray *)dataArray {
    
    
    SCBaseTableViewCell *cell;
    
//    NSArray *relatedArray = dataArray
    switch (indexPath.section) {
        case 0:{
            
            SCMuStoryTabCell *storyCell = [SCMuStoryTabCell musicStorycellWithTableView:tableView];
            storyCell.model = dataArray[indexPath.section];
            cell = storyCell;
            break;
        }
        case 1:{
            
            NSArray *relatedArray = dataArray[indexPath.section];
            if (relatedArray.count == 0) {
                break;
            }
            
            SCMuRelatedTabCell *relatedCell = [SCMuRelatedTabCell musicRelatedCellWithTableView:tableView];
            relatedCell.dataSource = relatedArray;
            cell = relatedCell;
            break;
        }
        case 2:{
            
            NSArray *commentArray = dataArray[indexPath.section];
            if (commentArray.count == 0) {
                break;
            }
            SCCommentTabCell *commentCell = [SCCommentTabCell commentTabCellWithTableView:tableView];
            commentCell.commentModel = commentArray[indexPath.row];
            cell = commentCell;
            break;
        }
        default:
            break;
    }
    
    return cell;

}
@end
