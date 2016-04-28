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

@property (nonatomic, strong) NSDictionary *dictHPList;

@end

@implementation SCHomeController

- (NSDictionary *)dataSource {
    
    if (!_dataSource) {
        
        
        NSLog(@"%@", self.dictHPList);
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
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    //[self initData];
    
    NSLog(@"%@", self.dataSource);
    
   }

- (void) initView {
    
    
}

- (NSDictionary *)dictHPList {
    
    if (!_dictHPList) {
        
        NSString *urlStr = [NSString stringWithFormat:@"%@%@", BASE_URL, homeList];
        
        [SCNetWorkAFRequest netRequestWithURL:urlStr params:nil success:^(NSDictionary *dict) {
            
            self.dictHPList = dict[@"data"];
            
        } failure:^(NSError *error) {
            
        } isGet:YES];

        
    }
    
    return _dictHPList;
    
}

//- (void) initData {
//    
//    NSString *urlStr = [NSString stringWithFormat:@"%@%@", BASE_URL, homeList];
//    
//    [SCNetWorkAFRequest netRequestWithURL:urlStr params:nil success:^(NSDictionary *dict) {
//        
//        self.dictHPList = dict[@"data"];
//        
//    } failure:^(NSError *error) {
//        
//    } isGet:YES];
//
//}

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
