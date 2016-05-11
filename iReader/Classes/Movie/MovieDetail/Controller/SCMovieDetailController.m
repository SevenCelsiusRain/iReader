//
//  SCMovieDetailController.m
//  iReader
//
//  Created by SevenCelsius on 16/4/29.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCMovieDetailController.h"
#import "SCMoviePlayController.h"

#import "SCMoDetailHeader.h"
#import "SCModetailCell.h"
#import "SCCommentTabCell.h"

#import "SCDetailMovieModel.h"

@interface SCMovieDetailController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSArray *dataSource;
@property (nonatomic, strong) UITableView *tableView;

@property (nonatomic, strong) SCMoDetailHeader *headerView;

@end

@implementation SCMovieDetailController

- (UITableView *)tableView {
    
    if (!_tableView) {
        
        
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        
        _tableView.dataSource = self;
        _tableView.delegate = self;
        
        
    }
    
    return _tableView;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self initData];
    [self initView];
    
}

- (void)initView {
    
    self.headerView = [SCMoDetailHeader movieDetailHeaderView];
    self.tableView.tableHeaderView = self.headerView;
    [self.view addSubview:self.tableView];
    
}

- (void) initData {
    
    [SCDetailMovieModel movieDetailModelWithMovieID:self.ID detailMovieModel:^(SCDetailMovieModel *movieModel) {
       
        self.dataSource = @[movieModel.storyModel, movieModel.commentM];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            [self.tableView reloadData];
            self.headerView.model = movieModel.headerModel;
        });
        
    }];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 1) {
        
        SCCommentTabCell * commentCell = [SCCommentTabCell commentTabCellWithTableView:tableView];
        
    }
    
    SCModetailCell *cell = [SCModetailCell movieDetailCellWithTableView:tableView];
    cell.storyModel = self.dataSource[indexPath.row];
    return cell;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if (section == 1) {
        
        NSArray *array = self.dataSource[section];
        return array.count;
    }
    
    return 1;
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 2;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    SCMoviePlayController *playerVC = [[SCMoviePlayController alloc] init];
    
    
    [self.navigationController pushViewController:playerVC animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
