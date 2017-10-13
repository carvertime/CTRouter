//
//  CTRouterVO.h
//  CTRouterDemo
//
//  Created by wenjie on 2017/10/12.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CTRouterVO : NSObject

@property (nonatomic, strong) NSString *key;
@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) NSDictionary *param;
@property (nonatomic, strong) NSString *className;
@property (nonatomic, assign) BOOL animationNone;
@property (nonatomic, assign) BOOL nib;
@property (nonatomic, assign) BOOL pop;

@end
