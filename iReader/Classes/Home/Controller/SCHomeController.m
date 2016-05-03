//
//  SCHomeController.m
//  iReader
//
//  Created by SevenCelsius on 16/4/24.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCHomeController.h"
#import "SCHomeModel.h"
#import "SCHomeCollectionCell.h"

@interface SCHomeController ()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) NSArray *dataSource;
@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) UICollectionViewFlowLayout *layout;

@property (nonatomic, strong) NSArray *arrayHPList;

@end

@implementation SCHomeController

- (NSArray *)dataSource {
    
    if (!_dataSource) {
        
        
            NSMutableArray *arrayM = [[NSMutableArray alloc] initWithCapacity:0];
        
        
        NSString *urlStr = [NSString stringWithFormat:BASE_URL, homeList];
        
        [SCNetWorkAFRequest netRequestWithURL:urlStr params:nil success:^(NSDictionary *dict) {
            
            self.arrayHPList = dict[@"data"];
            
            
            for (int i = 0; i < self.arrayHPList.count; i++) {
                
                NSString *str = [NSString stringWithFormat:homeDetail, self.arrayHPList[i]];
                NSString *urlStr = [NSString stringWithFormat:BASE_URL, str];
                
                [SCNetWorkAFRequest netRequestWithURL:urlStr params:nil success:^(NSDictionary *dict) {
                    
                    SCHomeModel *model = [SCHomeModel homeModelWithDict:dict[@"data"]];
                    [arrayM addObject:model];
                    
                    dispatch_async(dispatch_get_main_queue(), ^{
                        
                        [self.collectionView reloadData];
                        
                    });
                    
                } failure:^(NSError *error) {
                    
                    
                } isGet:YES];
                
            }
            
            
        } failure:^(NSError *error) {
            
        } isGet:YES];

        
            _dataSource = arrayM;

    }
    
    return _dataSource;
    
}

- (UICollectionView *)collectionView {
    
    if (!_collectionView) {
        
        _layout = [[UICollectionViewFlowLayout alloc] init];
        _layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        
        _layout.itemSize = CGSizeMake(375, 544);
        
        _layout.minimumInteritemSpacing = 0;
        _layout.minimumLineSpacing = 0;
        _collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:_layout];
        _collectionView.backgroundColor = [UIColor whiteColor];
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        _collectionView.pagingEnabled = YES;
        _collectionView.showsHorizontalScrollIndicator = NO;
        _collectionView.showsVerticalScrollIndicator = NO;
    }
    
    return _collectionView;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initView];
    
   }


- (void) initView {
    
    
    
    
    [self.view addSubview:self.collectionView];
    NSString *className = NSStringFromClass([SCHomeCollectionCell class]);
    [self.collectionView registerNib:[UINib nibWithNibName:className bundle:nil] forCellWithReuseIdentifier:className];
    
}

#pragma mark - 协议方法
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return self.dataSource.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    SCHomeCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([SCHomeCollectionCell class]) forIndexPath:indexPath];
    cell.homeMdel = self.dataSource[indexPath.row];
    
    return cell;
    
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
