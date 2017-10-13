//
//  CTRouter.m
//  CTRouterDemo
//
//  Created by wenjie on 2017/10/12.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CTRouter.h"
#import "UIViewController+Router.h"
#import "CTRouter_Private.h"
#import "CTRouterVO.h"

@interface CTRouter ()

@property (nonatomic, strong) NSMutableDictionary *callbackMapping;

@property (nonatomic, strong) NSString *routerScheme;
@property (nonatomic, strong) NSString *callbackScheme;

@end

@implementation CTRouter

+ (instancetype)sharedInstance{
    static CTRouter *router = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        router = [CTRouter new];
    });
    return router;
}

- (instancetype)init{
    if (self = [super init]) {
    }
    return self;
}


- (NSMutableDictionary *)routerMapping{
    if (_routerMapping == nil) {
        _routerMapping = [NSMutableDictionary new];
    }
    return _routerMapping;
}

@end
