//
//  SCOtherHeader.m
//  iReader
//
//  Created by SevenCelsius on 16/5/2.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCOtherHeader.h"

@interface SCOtherHeader ()

@property (weak, nonatomic) IBOutlet UIButton *iconBtn;

@property (weak, nonatomic) IBOutlet UIButton *userNameBtn;

@property (weak, nonatomic) IBOutlet UILabel *timeL;

@property (weak, nonatomic) IBOutlet UIButton *optionBtn;

@property (weak, nonatomic) IBOutlet UILabel *titleL;

@property (weak, nonatomic) IBOutlet UILabel *contentL;

@property (weak, nonatomic) IBOutlet UILabel *edtL;

@property (weak, nonatomic) IBOutlet UIButton *btomIconBtn;

@property (weak, nonatomic) IBOutlet UIButton *btoNameBtn;

@property (weak, nonatomic) IBOutlet UILabel *userDescL;

@end

@implementation SCOtherHeader


+ (id)otherHeaderView {
    
    SCOtherHeader *view = [[[NSBundle mainBundle] loadNibNamed:@"" owner:nil options:nil] lastObject];
    
    return view;
    
}

- (IBAction)btnClick {
    
    
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
