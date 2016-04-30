//
//  SCCusNaviController.m
//  iReader
//
//  Created by SevenCelsius on 16/4/24.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCCusNaviController.h"


@interface SCCusNaviController ()

@end

@implementation SCCusNaviController

// 类被使用才会调用
+ (void)initialize {
    
    
}

// 引入类文件就会被调用
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationBar.barTintColor = [UIColor whiteColor];
    
    
}

#pragma mark - 重写push方法
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    if (self.viewControllers.count > 0) {
        
        viewController.hidesBottomBarWhenPushed = YES;
        
        UIBarButtonItem *backItem = [UIBarButtonItem itemWithTarget:self action:@selector(backPreVC) image:@"return_image" hihImage:@"return_image_pressed"];
        viewController.navigationItem.leftBarButtonItem = backItem;
    }
    
    [super pushViewController:viewController animated:animated];
}

//- (UIViewController *)popViewControllerAnimated:(BOOL)animated {

//    if (self.viewControllers.count == 1) {
//        
//    }
    
//  return [super popViewControllerAnimated:YES];
//}

- (void) backPreVC {
    
    [self popViewControllerAnimated:YES];
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
