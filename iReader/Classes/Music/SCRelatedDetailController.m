//
//  SCRelatedDetailController.m
//  iReader
//
//  Created by SevenCelsius on 16/5/7.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCRelatedDetailController.h"
#import "SCMusicCollectionCell.h"


@interface SCRelatedDetailController ()

@end

@implementation SCRelatedDetailController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self initView];
    
}


- (void)initView {
    
    SCMusicCollectionCell *cell = [[SCMusicCollectionCell alloc] initWithFrame:self.view.bounds];
    
    cell.musicID = self.ID;
    [self.view addSubview:cell];
    
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
