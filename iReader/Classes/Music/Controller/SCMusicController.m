//
//  SCMusicController.m
//  iReader
//
//  Created by SevenCelsius on 16/4/25.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCMusicController.h"
#import "SCMusicCollectionCell.h"

@interface SCMusicController ()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) NSArray *dataSource;
@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) UICollectionViewFlowLayout *layout;

@end

@implementation SCMusicController


- (NSArray *)dataSource {
    
    if (!_dataSource) {
        
        NSString *urlStr = [NSString stringWithFormat:BASE_URL, musicList];
        [SCNetWorkAFRequest netRequestWithURL:urlStr params:nil success:^(NSDictionary *dict) {
            
            _dataSource = dict[@"data"];
            dispatch_async(dispatch_get_main_queue(), ^{
                
                [self.collectionView reloadData];
            });
            
        } failure:^(NSError *error) {
            
        } isGet:YES];
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
        
        _collectionView.showsHorizontalScrollIndicator = NO;
        _collectionView.showsVerticalScrollIndicator = NO;
        _collectionView.pagingEnabled = YES;
        _collectionView.dataSource = self;
        _collectionView.delegate = self;
    }
    
    return _collectionView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initView];
    
}

- (void) initView {
    
    
    [self.view addSubview:self.collectionView];
    
    NSString *className = NSStringFromClass([SCMusicCollectionCell class]);
    [self.collectionView registerClass:[SCMusicCollectionCell class] forCellWithReuseIdentifier:className];
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    SCMusicCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([SCMusicCollectionCell class]) forIndexPath:indexPath];
    
    cell.musicID = self.dataSource[indexPath.row];
    return cell;
}

- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    
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
