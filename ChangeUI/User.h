//
//  User.h
//  test
//
//  Created by jery on 2017/9/12.
//  Copyright © 2017年 J.C. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface User : NSObject

@property (nonatomic, assign) BOOL isUser;

+ (User *)shared;

@end
