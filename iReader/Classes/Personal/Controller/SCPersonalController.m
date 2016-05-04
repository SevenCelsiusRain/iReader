//
//  SCPersonalController.m
//  iReader
//
//  Created by SevenCelsius on 16/4/29.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCPersonalController.h"

@interface SCPersonalController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSArray *titleS;
@property (nonatomic, strong) NSArray *imgS;
@property (nonatomic, strong) UITableView *tableView;

@end

@implementation SCPersonalController


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
    
    [self initView];
    [self initData];
    
}

- (void) initView {
    
    [self.view addSubview:self.tableView];
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([UITableViewCell class]) bundle:nil] forCellReuseIdentifier:@"cell"];
}

- (void) initData {
    
    _titleS = @[@[@"图文", @"文章", @"影像", @"消息"], @[@"夜间模式", @"其他设置"]];
    _imgS = @[@[@"center_image_collection", @"center_reading_collection", @"center_movie_collection", @"center_message"], @[@"center_night_mode", @"center_setting"]];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = self.titleS[indexPath.section][indexPath.row];
    cell.imageView.image = [UIImage imageNamed:self.imgS[indexPath.section][indexPath.row]];
    
    return cell;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.titleS.count;
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
