//
//  UIView+SCExtent.m
//  iReader
//
//  Created by SevenCelsius on 16/5/7.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "UIView+SCExtent.h"

@implementation UIView (SCExtent)

- (UIViewController *)viewController {
    
    
    for (UIView *next = [self superview]; next; next = next.superview) {
        
        UIResponder *nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            
            return (UIViewController *)nextResponder;
        }
        
    }
    
    return nil;
}

@end
