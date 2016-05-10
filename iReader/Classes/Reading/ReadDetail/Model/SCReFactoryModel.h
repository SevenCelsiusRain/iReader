//
//  SCReFactoryModel.h
//  iReader
//
//  Created by SevenCelsius on 16/5/8.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SCReFactoryModel : NSObject

+ (id)readingDetailFactoryModelWithDict:(NSDictionary *)dict type:(NSInteger)type;

@end
