//
//  SCPersonalController.m
//  iReader
//
//  Created by SevenCelsius on 16/5/10.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCPersonalController.h"

@interface SCPersonalController ()

@property (weak, nonatomic) IBOutlet UIButton *iconBtn;

@property (weak, nonatomic) IBOutlet UILabel *userName;
@property (weak, nonatomic) IBOutlet UIImageView *loginBag;

@end


@implementation SCPersonalController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self.view bringSubviewToFront:self.loginBag];
    [self.view bringSubviewToFront:self.iconBtn];
    [self.view bringSubviewToFront:self.userName];
    self.iconBtn.layer.cornerRadius = 35;
    self.iconBtn.clipsToBounds = YES;
    self.iconBtn.contentMode = UIViewContentModeScaleToFill;
}


- (void)viewWillAppear:(BOOL)animated {
    
    self.navigationController.navigationBar.translucent = NO;
    
}

- (void)viewWillDisappear:(BOOL)animated {
    
    self.navigationController.navigationBar.translucent = YES;
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
