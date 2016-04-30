//
//  SCBaseController.m
//  iReader
//
//  Created by SevenCelsius on 16/4/24.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCBaseController.h"
#import "SCSearchController.h"
#import "SCPersonalController.h"

@interface SCBaseController ()

@end

@implementation SCBaseController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    NSLog(@"++++++%lu", self.navigationController.viewControllers.count);
    if (self.navigationController.viewControllers.count == 1) {
        
        UIBarButtonItem *searchItem = [UIBarButtonItem itemWithTarget:self action:@selector(searchAction) image:@"search" hihImage:@"search_pressed"];
        self.navigationItem.leftBarButtonItem = searchItem;
        
        UIBarButtonItem *personalItem = [UIBarButtonItem itemWithTarget:self action:@selector(personalVC) image:@"individual_center" hihImage:nil];
        self.navigationItem.rightBarButtonItem = personalItem;
    }
    
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void) searchAction {
    
    SCSearchController *searchVC = [[SCSearchController alloc] init];
    
    [self.navigationController pushViewController:searchVC animated:YES];
    
    
}

- (void) personalVC {
    
    SCPersonalController *personalVC = [[SCPersonalController alloc] init];
    [self.navigationController pushViewController:personalVC animated:YES];
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
