//
//  CTRouter+Public.m
//  CTRouterDemo
//
//  Created by wenjie on 2017/10/12.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "CTRouter+Public.h"
#import "CTRouterMaker.h"
#import "CTRouter_Private.h"
#import "CTRouterMaker_Private.h"
#import "CTRouterVO.h"
#import "CTRouter+Private.h"


@implementation CTRouter (Public)

- (void)ct_registerRouters:(void(^)(CTRouterMaker *make))block{
    CTRouterMaker *maker = [CTRouterMaker new];
    block(maker);
    [self registerRouterVO:maker.routerVO withKey:maker.routerVO.key];
}

- (void(^)())ct_makeRouters:(void (^)(CTRouterMaker *))block{
    return [self ct_makeRouters:block callback:nil];
}

- (void(^)())ct_makeRouters:(void(^)(CTRouterMaker *make))block
                   callback:(void(^)(id x))callback{
    CTRouterMaker *maker = [CTRouterMaker new];
    block(maker);
    return ^(){
        CTRouterVO *routerVO;
        NSURL *url = [NSURL URLWithString:maker.routerVO.url];
        NSString *host = url.host;
        NSString *key = maker.routerVO.key ? maker.routerVO.key : host;
        if (key) {
            routerVO = self.routerMapping[key];
            if (!routerVO) {
                routerVO = maker.routerVO;
            }
        } else {
            routerVO = maker.routerVO;
        }
        routerVO.param = [maker.routerVO.param copy];
        routerVO.callback = callback;
        [self routerWithRouterVO:routerVO];
    };
}

- (void)ct_popAnimation:(BOOL)animation{
    CTRouterVO *routerVO = [CTRouterVO new];
    routerVO.pop = YES;
    routerVO.animationNone = !animation;
    [self routerWithRouterVO:routerVO];
}

@end
