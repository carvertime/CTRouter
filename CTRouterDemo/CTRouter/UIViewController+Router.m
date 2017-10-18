//
//  UIViewController+Router.m
//  CTRouterDemo
//
//  Created by wenjie on 2017/10/12.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "UIViewController+Router.h"
#import <objc/runtime.h>

static const char CTRouterExtraDataKey;
static const char CTRouterCallBackKey;

@implementation UIViewController (Router)

- (void)setExtraData:(NSDictionary *)extraData{
    objc_setAssociatedObject(self, &CTRouterExtraDataKey, extraData, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (id)extraData{
    return objc_getAssociatedObject(self, &CTRouterExtraDataKey);
}

- (void)setCallback:(void (^)(id))callback{
    objc_setAssociatedObject(self, &CTRouterCallBackKey, callback, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void (^)(id))callback{
    return objc_getAssociatedObject(self, &CTRouterCallBackKey);
}

@end
