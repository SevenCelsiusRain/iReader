//
//  SCHomeController.m
//  iReader
//
//  Created by SevenCelsius on 16/4/24.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCHomeController.h"

@interface SCHomeController ()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) NSDictionary *dataSource;
@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) UICollectionViewFlowLayout *layout;

@end

@implementation SCHomeController

- (NSDictionary *)dataSource {
    
    if (!_dataSource) {
        
        _dataSource = [[NSDictionary alloc] init];
    }
    
    return _dataSource;
    
}

- (UICollectionView *)collectionView {
    
    if (!_collectionView) {
        
        _layout = [[UICollectionViewFlowLayout alloc] init];
        _collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:_layout];
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
    }
    
    return _collectionView;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor = [UIColor blueColor];
    // Do any additional setup after loading the view.
}

- (void) initView {
    
    
}

- (void) initData {
    
    NSString *urlStr = [NSString stringWithFormat:@"%@%@", BASE_URL, homeDetail];
    
    [SCNetWorkAFRequest netRequestWithURL:urlStr params:nil success:^(NSDictionary *dict) {
        
    } failure:^(NSError *error) {
        
    } isGet:YES];
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    return nil;
}

- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 10;
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
