//
//  SCMusicCollectionCell.m
//  iReader
//
//  Created by SevenCelsius on 16/5/5.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCMusicCollectionCell.h"
#import "SCMusicHeader.h"
#import "SCFactoryCell.h"

#import "SCMusicModel.h"

@interface SCMusicCollectionCell ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *dataSource;
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) SCMusicHeader *headerView;

@end
@implementation SCMusicCollectionCell


- (UITableView *)tableView {
    
    if (!_tableView) {
        
        _tableView = [[UITableView alloc] initWithFrame:self.bounds style:UITableViewStylePlain];
    }
    
    return _tableView;
    
}


- (instancetype)initWithFrame:(CGRect)frame {
    
    if ([super initWithFrame:frame]) {
        
         _dataSource = [NSMutableArray arrayWithCapacity:0];
        [self initView];
        
    }
    
    return self;
    
}

- (void) initView {
    
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    _headerView = [SCMusicHeader musicHeaderView];
    self.tableView.tableHeaderView = _headerView;
    
    [self addSubview:self.tableView];
    
}

- (void)setMusicID:(NSString *)musicID {
    
    _musicID = musicID;
    [self.dataSource removeAllObjects];
    [SCMusicModel musicModelWithStr:musicID musicModel:^(SCMusicModel *model) {
        
        [self.dataSource addObjectsFromArray:@[model.detailModel, model.relatedArrayM, model.commentArrayM]];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            [self.tableView reloadData];
            self.headerView.headerModel = self.dataSource[0];
        });
        
        
    }];
    
   
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    return [SCFactoryCell factoryCellWithTableView:tableView indexPath:indexPath dataArray:self.dataSource];

}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 150, 44)];
    lable.text = @"头部";
    
    return lable;
    
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if (section == 2) {
        
        NSMutableArray *array = self.dataSource[section];
        
        return array.count;
    }else {
        
        return 1;
    }
    
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    
       return [self sectionNumber];
}


- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 200;
}

- (NSUInteger)sectionNumber {
    
    NSUInteger num = self.dataSource.count;
    
    NSArray *array;
    
    for (int i = 1; i < self.dataSource.count; i ++) {
        
        array = self.dataSource[i];
        if (array.count == 0) {
            
            num --;
        }
    }
    
    return num;
}


@end
