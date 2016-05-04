//
//  SCSectionHeader.h
//  iReader
//
//  Created by SevenCelsius on 16/5/3.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SCSectionHeader : UIView

@property (nonatomic, copy) void (^selectedIndexBlock)(NSInteger);

+ (id) sectionHeaderWithImgs:(NSArray *)imgs selImgs:(NSArray *)selImgs;

@end
