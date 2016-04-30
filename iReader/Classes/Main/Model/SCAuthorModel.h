//
//  SCAuthorModel.h
//  iReader
//
//  Created by SevenCelsius on 16/4/30.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@interface SCAuthorModel : JSONModel

@property (nonatomic, copy) NSString<Optional> *user_id;
@property (nonatomic, copy) NSString<Optional> *user_name;
@property (nonatomic, copy) NSString<Optional> *web_url;
@property (nonatomic, copy) NSString<Optional> *desc;

+ authorModelWithDict:(NSDictionary *)dict;

@end
