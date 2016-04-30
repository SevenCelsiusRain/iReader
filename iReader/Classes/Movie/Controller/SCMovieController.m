//
//  SCMovieController.m
//  iReader
//
//  Created by SevenCelsius on 16/4/25.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCMovieController.h"
#import "SCMovieDetailController.h"

#import "SCMovieModel.h"
#import "SCMovieTabCell.h"


@interface SCMovieController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSArray *dataSource;
@property (nonatomic, strong) UITableView *tableView;


@end

@implementation SCMovieController

- (UITableView *)tableView {
    
    if (!_tableView) {
        
        
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    }
    
    return _tableView;
}

- (NSArray *)dataSource {
    
    
    if (!_dataSource) {
        
        
        NSMutableArray *arrayM = [NSMutableArray arrayWithCapacity:0];
        
        NSString *urlStr = [NSString stringWithFormat:BASE_URL, movieList];
        
        [SCNetWorkAFRequest netRequestWithURL:urlStr params:nil success:^(NSDictionary *dict) {
            
            NSArray *temp = dict[@"data"];
            
            for (NSDictionary *diction in temp) {
                
               SCMovieModel *movieModel = [SCMovieModel movieModelWithDict:diction];
                [arrayM addObject:movieModel];
                
            }
            _dataSource = arrayM;
            
            dispatch_async(dispatch_get_main_queue(), ^{
                
                
                [_tableView reloadData];
            });
            
            
        } failure:^(NSError *error) {
            
            
        } isGet:YES];
        
    }
    
    return _dataSource;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initView];
    
}

- (void) initView {
    
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:self.tableView];
    
    
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.dataSource.count;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    SCMovieTabCell *cell = [SCMovieTabCell movieTabCellWithTableView:tableView];
    cell.movieModel = self.dataSource[indexPath.row];
    
    
    return cell;
    
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    return 200;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    SCMovieDetailController *detailVC = [[SCMovieDetailController alloc] init];
    [self.navigationController pushViewController:detailVC animated:YES];
    
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
