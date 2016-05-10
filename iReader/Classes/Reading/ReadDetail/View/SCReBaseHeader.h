//
//  SCReBaseHeader.h
//  iReader
//
//  Created by SevenCelsius on 16/5/8.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SCBaseContentModel;
@interface SCReBaseHeader : UIView
{
    
    SCBaseContentModel *_model;
}
@property (nonatomic, strong) SCBaseContentModel *model;
@property (nonatomic, assign) NSInteger type;

@end
