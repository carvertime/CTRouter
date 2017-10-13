//
//  CTRouterMaker.m
//  CTRouterDemo
//
//  Created by wenjie on 2017/10/12.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "CTRouterMaker.h"
#import "CTRouterVO.h"
#import "CTRouterMaker_Private.h"

@interface CTRouterMaker ()

@end

@implementation CTRouterMaker

- (instancetype)init{
    if (self = [super init]) {
        self.routerVO = [CTRouterVO new];
    }
    return self;
}

- (CTRouterMaker *(^)(NSString *))key{
    return ^(NSString *key) {
        self.routerVO.key = key;
        return self;
    };
}

- (CTRouterMaker *(^)(NSString *))className{
    return ^(NSString *className) {
        self.routerVO.className = className;
        return self;
    };
}

- (CTRouterMaker *(^)(NSString *))url{
    return ^(NSString *url) {
        self.routerVO.url = url;
        return self;
    };
}

- (CTRouterMaker *(^)(NSDictionary *))param{
    return ^(NSDictionary *param) {
        self.routerVO.param = param;
        return self;
    };
}

- (CTRouterMaker *(^)(BOOL))animationNone{
    return ^(BOOL animationNone) {
        self.routerVO.animationNone = animationNone;
        return self;
    };
}

- (CTRouterMaker *(^)(BOOL))nib{
    return ^(BOOL nib) {
        self.routerVO.nib = nib;
        return self;
    };
}

- (CTRouterMaker *(^)(BOOL))modal{
    return ^(BOOL modal) {
        self.routerVO.modal = modal;
        return self;
    };
}

@end
