//
//  SCMoDetailHeader.h
//  iReader
//
//  Created by SevenCelsius on 16/5/3.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SCMoDetailModel;
@interface SCMoDetailHeader : UIView

@property (nonatomic, strong) SCMoDetailModel *model;

+ (id) movieDetailHeaderView;
@end
