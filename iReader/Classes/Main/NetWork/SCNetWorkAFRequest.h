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

/***
 判断网络状态
 */
+ (NetWorkState) isNetWorkReach;

/***
 请求网络数据
 */
+ (void) netRequestWithURL:(NSString *)urlStr params:(NSDictionary *)params success:(void(^)(NSDictionary *dict))success failure:(void(^)(NSError *error))failure isGet:(BOOL)isGet;

@end
