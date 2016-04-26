//
//  SCNetWorkAFRequest.h
//  iReader
//
//  Created by SevenCelsius on 16/4/25.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, NetWorkState){
    
    NetWorkState_None = 0,
    NetWorkState_WWAN,
    NetWorkState_WIFI,
    NetWorkState_3G,
    NetWorkState_4G,
    NetWorkState_CHECKING
};

@interface SCNetWorkAFRequest : NSObject

#warning 1、判断网络状态；2、封装get、post请求

+ (id) isNetWorkReach;

@end
