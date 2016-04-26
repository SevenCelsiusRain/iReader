//
//  SCCusTabBarController.m
//  iReader
//
//  Created by SevenCelsius on 16/4/24.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCCusTabBarController.h"
#import "SCHomeController.h"
#import "SCReadingController.h"
#import "SCMusicController.h"
#import "SCMovieController.h"

#import "SCCusNaviController.h"

@interface SCCusTabBarController ()

@end

@implementation SCCusTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // tabBar背景色
    self.tabBar.barTintColor = [UIColor yellowColor];
    
    // 首页
    SCHomeController *homeVC = [[SCHomeController alloc] init];
    [self addChildVC:homeVC title:@"" image:@"" selImage:@""];
    
    // 阅读
    SCReadingController *readingVC = [[SCReadingController alloc] init];
    [self addChildVC:readingVC title:@"" image:@"" selImage:@""];
    
    
    // 音乐
    SCMusicController *musicVC = [[SCMusicController alloc] init];
    [self addChildVC:musicVC title:@"" image:@"" selImage:@""];
    
    // 电影
    SCMovieController *movieVC = [[SCMovieController alloc] init];
    [self addChildVC:movieVC title:@"" image:@"" selImage:@""];
    
}

#pragma mark - 为tabbar添加子控制器
- (void) addChildVC:(UIViewController *)VC title:(NSString *)title image:(NSString *) image selImage:(NSString *)selImage{

    [VC.tabBarItem setImage:[UIImage imageNamed:image]];
    [VC.tabBarItem setSelectedImage:[UIImage imageNamed:selImage]];
    
    
    SCCusNaviController *nav = [[SCCusNaviController alloc] initWithRootViewController:VC];
    [self addChildViewController:nav];


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
