//
//  SCMusicHeader.h
//  iReader
//
//  Created by SevenCelsius on 16/5/3.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SCMusicModel;
@interface SCMusicHeader : UIView

@property (nonatomic, strong) SCMusicModel *musicModel;

+ (id)musicHeaderView;

@end
