//
//  CTRouter+Private.m
//  CTRouterDemo
//
//  Created by wenjie on 2017/10/12.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CTRouter+Private.h"
#import "CTRouter_Private.h"
#import "CTRouterVO.h"
#import "UIViewController+Router.h"


@implementation CTRouter (Private)

- (void)registerRouterVO:(CTRouterVO *)aVO withKey:(NSString *)key{
    NSParameterAssert(aVO);
    NSParameterAssert(key);
    if (aVO && key && !self.routerMapping[key]) {
        aVO.key = key;
        self.routerMapping[key] = aVO;
    }
}

- (void)routerWithRouterVO:(CTRouterVO *)routerVO{
    UINavigationController *nav = [self getNavigationController];
    if (routerVO.pop) {
        [nav popViewControllerAnimated:!routerVO.animationNone];
        return;
    }
    NSParameterAssert(routerVO.className);
    Class class = NSClassFromString(routerVO.className);
    UIViewController *viewController;
    if (routerVO.nib) {
        viewController = [[class alloc] initWithNibName:routerVO.className bundle:[NSBundle mainBundle]];
    } else {
       viewController = [NSClassFromString(routerVO.className) new];
    }
    NSParameterAssert(viewController);
    viewController.extraData = routerVO.param ?: @{};
    if (routerVO.modal) {
        [nav presentViewController:viewController animated:!routerVO.animationNone completion:nil];
    } else {
        [nav.presentedViewController dismissViewControllerAnimated:NO completion:nil];
        [nav pushViewController:viewController animated:!routerVO.animationNone];
    }
}

- (UINavigationController *)getNavigationController{
    UIViewController *rootVC = [UIApplication sharedApplication].delegate.window.rootViewController;
    if ([rootVC isKindOfClass:[UINavigationController class]]) {
        return  (UINavigationController *)rootVC;
    } else if ([rootVC isKindOfClass:[UITabBarController class]]) {
        UITabBarController *tabVC = (UITabBarController *)rootVC;
        return (UINavigationController *)tabVC.selectedViewController;
    }
    return nil;
}

@end
