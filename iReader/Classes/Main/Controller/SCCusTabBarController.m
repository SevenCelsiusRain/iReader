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
    //self.tabBar.barTintColor = [UIColor yellowColor];
    
    // 首页
    SCHomeController *homeVC = [[SCHomeController alloc] init];
    [self addChildVC:homeVC title:@"爱阅" image:@"home" selImage:@"home_active"];
    
    // 阅读
    SCReadingController *readingVC = [[SCReadingController alloc] init];
    [self addChildVC:readingVC title:@"阅读" image:@"reading" selImage:@"reading_active"];
    
    
    // 音乐
    SCMusicController *musicVC = [[SCMusicController alloc] init];
    [self addChildVC:musicVC title:@"音乐" image:@"music" selImage:@"music_active"];
    
    // 电影
    SCMovieController *movieVC = [[SCMovieController alloc] init];
    [self addChildVC:movieVC title:@"电影" image:@"movie" selImage:@"movie_active"];
    
}

#pragma mark - 为tabbar添加子控制器
- (void) addChildVC:(UIViewController *)VC title:(NSString *)title image:(NSString *) image selImage:(NSString *)selImage{

    VC.navigationItem.title = title;
    

    
    [VC.tabBarItem setImage:[[UIImage imageNamed:image] originalImg]];
    [VC.tabBarItem setSelectedImage:[[UIImage imageNamed:selImage] originalImg]];
    
//    VC.tabBarItem.imageInsets = UIEdgeInsetsMake(15, 10, -15, -10);
    VC.tabBarController.tabBar.contentMode = UIViewContentModeScaleAspectFit;
    VC.tabBarItem.imageInsets = UIEdgeInsetsMake(5, 0, -5, 0);
   
    
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
