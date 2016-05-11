//
//  SCMuRelatedTabCell.m
//  iReader
//
//  Created by SevenCelsius on 16/5/7.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCMuRelatedTabCell.h"
#import "SCMuListColCell.h"
#import "SCMuRelatedModel.h"

#import "SCRelatedDetailController.h"

@interface SCMuRelatedTabCell ()<UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView *collectionView;

@end
@implementation SCMuRelatedTabCell

- (UICollectionView *)collectionView {
    
    if (!_collectionView) {
        
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        layout.itemSize = CGSizeMake(120, 200);
//        layout.sectionInset = UIEdgeInsetsMake(20, 20, 20, 20);
        layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, 375, 200) collectionViewLayout:layout];
        _collectionView.showsVerticalScrollIndicator = NO;
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
    }
    
    return _collectionView;
}

+ (id)musicRelatedCellWithTableView:(UITableView *)tableView {
    
    NSString *className = NSStringFromClass([self class]);
    
    [tableView registerClass:[self class] forCellReuseIdentifier:className];
    
    SCMuRelatedTabCell *cell = [tableView dequeueReusableCellWithIdentifier:className];
    
    
    return cell;
    
}

- (void)setDataSource:(NSArray *)dataSource {
    
    _dataSource = dataSource;
    
    [self initView];
}

- (void) initView {
    
    [self.contentView addSubview:self.collectionView];
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
    NSString *className = NSStringFromClass([SCMuListColCell class]);
    [self.collectionView registerNib:[UINib nibWithNibName:className bundle:nil] forCellWithReuseIdentifier:className];
    
}

- (UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    SCMuListColCell *listCell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([SCMuListColCell class]) forIndexPath:indexPath];
    
    listCell.contentView.backgroundColor = [UIColor whiteColor];
    listCell.model = self.dataSource[indexPath.row];
    
    return listCell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    
    return self.dataSource.count;
}

- (void) collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    
    SCRelatedDetailController *reDetailVC = [[SCRelatedDetailController alloc] init];
    SCMuRelatedModel *relatedModel = self.dataSource[indexPath.row];
    reDetailVC.ID = relatedModel.ID;
    [self.viewController.navigationController pushViewController:reDetailVC animated:YES];
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
