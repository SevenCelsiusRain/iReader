//
//  SCSectionHeader.m
//  iReader
//
//  Created by SevenCelsius on 16/5/3.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCSectionHeader.h"

#define BTN_TAG 90

@interface SCSectionHeader ()

@property (weak, nonatomic) IBOutlet UILabel *tipsL;

@property (weak, nonatomic) IBOutlet UIButton *firstBtn;

@property (weak, nonatomic) IBOutlet UIButton *secondBtn;

@property (weak, nonatomic) IBOutlet UIButton *thirdBtn;

@end

@implementation SCSectionHeader

+ (id)sectionHeaderWithImgs:(NSArray *)imgs selImgs:(NSArray *)selImgs {
    
    
    SCSectionHeader *view = [[[NSBundle mainBundle] loadNibNamed:@"SCSectionHeader" owner:nil options:nil] lastObject];
    
    [view.firstBtn setNolImg:imgs[0] selImg:selImgs[0] isBackgroundImage:YES];
    [view.secondBtn setNolImg:imgs[1] selImg:selImgs[1] isBackgroundImage:YES];
    [view.thirdBtn setNolImg:imgs[2] selImg:selImgs[2] isBackgroundImage:YES];
        
    return view;

}

- (IBAction)btnClick:(UIButton *)button {
    
    if (_selectedIndexBlock) {
        
        self.selectedIndexBlock( button.tag - BTN_TAG);
    }
    
   
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
