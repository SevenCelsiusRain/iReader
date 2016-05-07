//
//  SCBannerController.m
//  iReader
//
//  Created by SevenCelsius on 16/5/4.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCBannerController.h"
#import "SCBannerDetailModel.h"
#import "SCBaDetailTabCell.h"
#import "SCReDetailController.h"

@interface SCBannerController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSArray *dataSource;
@property (nonatomic, strong) UITableView *tableView;

@end

@implementation SCBannerController


- (NSArray *)dataSource {
    
    if (!_dataSource) {
      
        NSMutableArray *arrayM = [NSMutableArray arrayWithCapacity:0];
        NSString *str = [NSString stringWithFormat:bannerDetail, self.bannerModel.ID];
        NSString *urlStr = [NSString stringWithFormat:BASE_URL, str];
        [SCNetWorkAFRequest netRequestWithURL:urlStr params:nil success:^(NSDictionary *dict) {
            
            for (NSDictionary *temp in dict[@"data"]) {
                
                SCBannerDetailModel *model = [SCBannerDetailModel bannerDetailModelWithDict:temp];
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

- (UITableView *)tableView {
    
    if (!_tableView) {
        
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate =self;
        _tableView.dataSource = self;
    }
    
    return _tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initView];
}

- (void)initView {
    
    [self.view addSubview: self.tableView];
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 375, 100)];
    [SCNetWorkImage setImageWithImageView:imgView urlStr:self.bannerModel.cover plhImageType:PlhINillType];
    self.tableView.tableFooterView = imgView;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    SCBaDetailTabCell *cell = [SCBaDetailTabCell bannerDetailCellWithTableView:tableView];
    
     cell.backgroundColor = [UIColor hexStringToRGB:self.bannerModel.bgcolor];
    cell.model = self.dataSource[indexPath.row];
    return cell;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.dataSource.count;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 140;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    SCReDetailController *detailVC = [[SCReDetailController alloc] init];
    
    SCBannerDetailModel *model = self.dataSource[indexPath.row];
    detailVC.type = model.type.integerValue;
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
