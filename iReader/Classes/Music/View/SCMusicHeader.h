//
//  SCMusicHeader.h
//  iReader
//
//  Created by SevenCelsius on 16/5/3.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SCMuDetailModel;
@interface SCMusicHeader : UIView

@property (nonatomic, strong) SCMuDetailModel *headerModel;

+ (id)musicHeaderView;

@end
