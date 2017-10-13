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

@implementation UIViewController (Router)

- (void)setExtraData:(NSDictionary *)extraData{
    objc_setAssociatedObject(self, &CTRouterExtraDataKey, extraData, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSDictionary *)extraData{
    return objc_getAssociatedObject(self, &CTRouterExtraDataKey);
}

@end
