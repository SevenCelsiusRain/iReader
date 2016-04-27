//
//  SCNetWorkAFRequest.m
//  iReader
//
//  Created by SevenCelsius on 16/4/25.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCNetWorkAFRequest.h"
#import "Reachability.h"
#import "AFNetworking.h"

@implementation SCNetWorkAFRequest

+ (NetWorkState)isNetWorkReach {
    
    NetWorkState appState;
    
    // 获取网络状态
    
    Reachability *rea = [Reachability reachabilityWithHostName:@"www.baidu.com"];
    NetworkStatus status = [rea currentReachabilityStatus];
    
    switch (status) {
        case NotReachable:
            appState = NetWorkState_None;
            break;
        case ReachableViaWiFi:
            appState = NetWorkState_WIFI;
            break;
        case ReachableViaWWAN:
            appState = NetWorkState_WWAN;
            break;
        default:
            break;
    }
    
    return appState;
}
/***
 网络请求求数据
 */
+ (void)netRequestWithURL:(NSString *)urlStr params:(NSDictionary *)params success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure isGet:(BOOL)isGet{
    
    if ([self isNetWorkReach] == NetWorkState_None) {
        if (failure) {
            failure(nil);
        }
        
        return;
    }
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager.requestSerializer setValue:@"" forHTTPHeaderField:@"token"];
    
    if (isGet) {
        
        [manager GET:urlStr parameters:params progress:^(NSProgress * _Nonnull downloadProgress) {
            
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            
            id obj = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
            
            if (success) {
                success(obj);
            }
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            
            if (failure) {
                failure(error);
            }
        }];

    }else {
        
        [manager POST:urlStr parameters:params progress:^(NSProgress * _Nonnull uploadProgress) {
            
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            
            id obj = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
            
            if (success) {
                success(obj);
            }
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            
            if (failure) {
                failure(error);
            }
        }];
        
    }
    
    
    
}

@end
