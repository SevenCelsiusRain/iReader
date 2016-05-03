//
//  SCReDetailController.m
//  iReader
//
//  Created by SevenCelsius on 16/4/30.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCReDetailController.h"
#import "SCReadingModel.h"
#import "SCQuDetailHeader.h"
#import "SCOtherHeader.h"

@interface SCReDetailController ()<UITableViewDelegate, UITableViewDataSource>


@property (nonatomic, strong) NSArray *dataSource;
@property (nonatomic, strong) UITableView *tableView;

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
        
    }
    
    return _dataSource;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initView];
}

- (void)initView {
    
    NSString *title;
    if (self.reCellModel.type == 1) {
        
        title = @"短篇";
    }else if (self.reCellModel.type == 2) {
        
        title = @"连载";
    } else {
        
        title = @"问题";
        
    }
    
    self.title = title;
    
    [self.view addSubview:self.tableView];

    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    return nil;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 10;
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    
    
    return self.dataSource.count;
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
