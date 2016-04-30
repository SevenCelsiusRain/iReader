//
//  SCFactoryModel.h
//  iReader
//
//  Created by SevenCelsius on 16/4/30.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface SCFactoryModel : NSObject

+ (id) factoryConModelWithDict:(NSDictionary *)dict Type:(NSInteger) type;

@end
