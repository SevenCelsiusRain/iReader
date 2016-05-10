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
    NSInteger index = indexPath.section;
    
    
        if (index != 0) {
            
            NSArray *relatedArray;
            
            relatedArray = dataArray[1];
            if (relatedArray.count == 0) {
                
                relatedArray = dataArray[2];
                if (relatedArray.count != 0) {
                    
                    index = 2;
                }
            }
        }
    
    
    switch (index) {
        case 0:{
            
            SCMuStoryTabCell *storyCell = [SCMuStoryTabCell musicStorycellWithTableView:tableView];
            storyCell.model = dataArray[index];
            cell = storyCell;
            break;
        }
        case 1:{
            
            NSArray *relatedArray = dataArray[index];
            SCMuRelatedTabCell *relatedCell = [SCMuRelatedTabCell musicRelatedCellWithTableView:tableView];
            relatedCell.dataSource = relatedArray;
            cell = relatedCell;
            break;
        }
        case 2:{
            
            NSArray *commentArray = dataArray[index];
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
