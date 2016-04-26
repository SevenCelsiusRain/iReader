//
//  SCBaseModel.h
//  iReader
//
//  Created by SevenCelsius on 16/4/24.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@interface SCBaseModel : JSONModel

@property (nonatomic, copy) NSString *as;


@property (nonatomic, copy) NSString<Optional> *sa;


@property (nonatomic, readonly, copy) NSString *pp;

@end
