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


@end

@implementation SCHomeController

- (NSArray *)dataSource {
    
    if (!_dataSource) {
        
        NSString *urlStr = [NSString stringWithFormat:BASE_URL, homeList];
        
        [SCNetWorkAFRequest netRequestWithURL:urlStr params:nil success:^(NSDictionary *dict) {
            
            NSMutableArray *arrayM = [[NSMutableArray alloc] initWithCapacity:0];
            
            NSArray *array = dict[@"data"];
            
            for (int i = 0; i < array.count; i++) {
                
                NSString *str = [NSString stringWithFormat:homeDetail, array[i]];
                NSString *urlStr = [NSString stringWithFormat:BASE_URL, str];
                
                [SCNetWorkAFRequest netRequestWithURL:urlStr params:nil success:^(NSDictionary *dict) {
                    
                    SCHomeModel *model = [SCHomeModel homeModelWithDict:dict];
                    [arrayM addObject:model];
                    
                } failure:^(NSError *error) {
                    
                    
                } isGet:YES];
                
            }
            
            _dataSource = array;
            
        } failure:^(NSError *error) {
            
        } isGet:YES];
        

    }
    
    return _dataSource;
    
}

- (UICollectionView *)collectionView {
    
    if (!_collectionView) {
        
        _layout = [[UICollectionViewFlowLayout alloc] init];
        _layout.scrollDirection = UICollectionViewScrollDirectionVertical;
        
        _collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:_layout];
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
    }
    
    return _collectionView;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    [self initView];
    
   }

- (void) initView {
    
    
    [self.view addSubview:self.collectionView];
    NSString *className = NSStringFromClass([SCHomeCollectionCell class]);
    [self.collectionView registerNib:[UINib nibWithNibName:className bundle:nil] forCellWithReuseIdentifier:className];
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return self.dataSource.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    SCHomeCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([SCHomeCollectionCell class]) forIndexPath:indexPath];
    
    
    return cell;
    
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
