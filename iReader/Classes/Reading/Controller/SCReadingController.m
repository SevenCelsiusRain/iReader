//
//  SCReadingController.m
//  iReader
//
//  Created by SevenCelsius on 16/4/25.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCReadingController.h"
#import "SCReadTabCell.h"
#import "SDCycleScrollView.h"
#import "SCReDetailController.h"

#import "SCReadingModel.h"
#import "SCBaseContentModel.h"
#import "SCBannerModel.h"
#import "SCBannerController.h"

@interface SCReadingController ()<UITableViewDataSource, UITableViewDelegate, SDCycleScrollViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *dataSource;

@property (nonatomic, strong) NSMutableArray *bannerArrayM;
@property (nonatomic, strong) NSMutableArray *imgsURLArrayM;
@property (nonatomic, strong) SDCycleScrollView *headerView;


@end

@implementation SCReadingController

- (UITableView *)tableView {
    
    if (!_tableView) {
        
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    }
    
    return _tableView;
}

- (NSArray *)dataSource {
    
    if (!_dataSource) {
        
        NSMutableArray *arrayM = [NSMutableArray arrayWithCapacity:0];
        
        NSString *str = [NSString stringWithFormat:reading, 0];
        NSString *urlStr = [NSString stringWithFormat:BASE_URL, str];
        
        [SCNetWorkAFRequest netRequestWithURL:urlStr params:nil success:^(NSDictionary *dict) {
            
            
            for (NSDictionary *temp in dict[@"data"]) {
                
                SCReadingModel *model = [SCReadingModel readModelWithDict:temp];
                
                [arrayM addObject:model];
            }
            
            _dataSource = arrayM;
            
            dispatch_async(dispatch_get_main_queue(), ^{
               
                [self.tableView reloadData];
            });
            
        } failure:^(NSError *error) {
            
            
        } isGet:YES];
        
    }
    
    return _dataSource;
}

- (NSMutableArray *)imgsURLArrayM {
    
    if (!_bannerArrayM) {
        
        NSString *urlStr = [NSString stringWithFormat:BASE_URL, banner];
        
        _bannerArrayM = [NSMutableArray arrayWithCapacity:0];
        _imgsURLArrayM = [NSMutableArray arrayWithCapacity:0];
        [SCNetWorkAFRequest netRequestWithURL:urlStr params:nil success:^(NSDictionary *dict) {
            
            for (NSDictionary *temp in dict[@"data"]) {
                
                SCBannerModel *bannerModel = [SCBannerModel bannerModelWithDict:temp];
                [_bannerArrayM addObject:bannerModel];
                [_imgsURLArrayM addObject:bannerModel.cover];
            }
            
            self.headerView.imageURLStringsGroup = _imgsURLArrayM;
            
        } failure:^(NSError *error) {
            
        } isGet:YES];
        
    }
    
    return _imgsURLArrayM;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initView];
   
}

- (void) initView {
    
    
    SDCycleScrollView *cycleScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 64, SCREEN_WIDTH, 200) delegate:self placeholderImage:nil];
    cycleScrollView.delegate = self;
    cycleScrollView.pageControlStyle = SDCycleScrollViewPageContolStyleAnimated;
    cycleScrollView.scrollDirection = UICollectionViewScrollDirectionVertical;
    cycleScrollView.imageURLStringsGroup = self.imgsURLArrayM;
    
    self.tableView.tableHeaderView = cycleScrollView;
    
    self.headerView = cycleScrollView;
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self.view addSubview:self.tableView];
    
}


#pragma mark - banner跳转
- (void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index {
    
    SCBannerController *bannerVC = [[SCBannerController alloc] init];
    bannerVC.bannerModel = self.bannerArrayM[index];
    [self.navigationController pushViewController:bannerVC animated:YES];
    
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    SCReadTabCell *cell = [SCReadTabCell readCellWithTableView:tableView];
    
    SCReadingModel *readModel = self.dataSource[indexPath.section];
    
    SCCellModel *cellModel = readModel.items[indexPath.row];
    cell.cellModel = cellModel;
    
    return cell;
    
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    SCReadingModel *readModel = self.dataSource[section];
    
    return readModel.items.count;
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    
    return self.dataSource.count;
}

- (UIView *) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    SCReadingModel *model = self.dataSource[section];
    
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, SCREEN_WIDTH, 40)];
    lable.backgroundColor = [UIColor colorWithRed:221/255.f green:221/255.f blue:221/255.f alpha:1];
    lable.text = [NSString stringWithFormat:@"    %@", model.date];
    return lable;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 200;
}

- (CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    
    return 40;
}

// cell 跳转
- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    SCReDetailController *detailVC = [[SCReDetailController alloc] init];
    SCReadingModel *readModel = self.dataSource[indexPath.section];
    
    SCCellModel *cellModel = readModel.items[indexPath.row];

    detailVC.type = cellModel.type;
    
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
