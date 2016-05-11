//
//  SCReDetailController.m
//  iReader
//
//  Created by SevenCelsius on 16/4/30.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCReDetailController.h"

#import "SCReBaseHeader.h"
#import "SCQuDetailHeader.h"
#import "SCOtherHeader.h"

#import "SCBaseTableViewCell.h"
#import "SCCommentTabCell.h"
#import "SCReadTabCell.h"

#import "SCReadingDetailModel.h"

@interface SCReDetailController ()<UITableViewDelegate, UITableViewDataSource>


@property (nonatomic, strong) NSArray *dataSource;
@property (nonatomic, strong) UITableView *tableView;

@property (nonatomic, strong) SCReBaseHeader *headerView;

@end

@implementation SCReDetailController


- (UITableView *)tableView {
    
    if (!_tableView) {
        
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    
    return _tableView;
    
}

- (NSArray *)dataSource {
    
    if (!_dataSource) {
        
        [SCReadingDetailModel readingDetailModelWithReadingID:self.detailID type:self.type model:^(SCReadingDetailModel *detailModel) {
            
            self.dataSource = detailModel.commentM;
            
            dispatch_async(dispatch_get_main_queue(), ^{
                
                [self.tableView reloadData];
                
                self.headerView.model = detailModel.headerModel;
                
            });
            
        }];
    }
    
    return _dataSource;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initView];
}

- (void)initView {
    
    NSString *title;
    if (self.type == 1) {
        
        title = @"短篇";
    }else if (self.type == 2) {
        
        title = @"连载";
    } else {
        
        title = @"问题";
        
    }
    
//    self.navigationController.toolbarHidden = NO;
    
    UIBarButtonItem *praise = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"laud_pressed"] style:UIBarButtonItemStyleDone target:self action:nil];
    UIBarButtonItem *comment = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"comment_image"] style:UIBarButtonItemStyleDone target:self action:nil];
    UIBarButtonItem *share = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"share_image"] style:UIBarButtonItemStyleDone target:self action:nil];
    UIBarButtonItem *flexible = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    self.toolbarItems = @[flexible, praise, flexible, comment, flexible, share, flexible];
    
    self.title = title;
    
    if (self.type == 3) {
        
     self.headerView = [SCQuDetailHeader quHeaderView];
        
    }else {
        
        
        self.headerView = [SCOtherHeader otherHeaderView];
        self.headerView.type = self.type;
    }
    
    self.tableView.tableHeaderView = self.headerView;
    [self.view addSubview:self.tableView];

    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    SCCommentTabCell *commentCell = [SCCommentTabCell commentTabCellWithTableView:self.tableView];
    commentCell.commentModel = self.dataSource[indexPath.row];
    return commentCell;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    
    return self.dataSource.count;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    return 200;
}

- (void)viewWillDisappear:(BOOL)animated {
    
    
//    self.navigationController.toolbarHidden = YES;
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
