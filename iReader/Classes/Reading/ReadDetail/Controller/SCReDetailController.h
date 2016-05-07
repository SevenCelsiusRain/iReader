//
//  SCReDetailController.h
//  iReader
//
//  Created by SevenCelsius on 16/4/30.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCBaseController.h"

@class SCCellModel;
@interface SCReDetailController : SCBaseController

@property (nonatomic, strong) SCCellModel *reCellModel;
@property (nonatomic, assign) NSInteger type;

@end
