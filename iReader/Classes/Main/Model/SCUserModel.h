//
//  SCUserModel.h
//  iReader
//
//  Created by SevenCelsius on 16/5/3.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@interface SCUserModel : JSONModel

@property (nonatomic, copy) NSString<Optional> *user_id;
@property (nonatomic, copy) NSString<Optional> *user_name;
@property (nonatomic, copy) NSString<Optional> *web_url;

+ userModelWithDict:(NSDictionary *)dict;

@end
