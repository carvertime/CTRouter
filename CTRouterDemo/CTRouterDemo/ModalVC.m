//
//  ModalVC.m
//  CTRouterDemo
//
//  Created by wenjie on 2017/10/13.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "ModalVC.h"
#import "CTRouter+Public.h"
#import "UIViewController+Router.h"

@interface ModalVC ()

@end

@implementation ModalVC

+ (void)load{
    [[CTRouter sharedInstance] ct_registerRouters:^(CTRouterMaker *make) {
        make.key(@"modal").className(NSStringFromClass(self)).modal(true);
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self routerTest];
    });
}

- (void)routerTest{
    [[CTRouter sharedInstance] ct_makeRouters:^(CTRouterMaker *make) {
        make.key(@"xibvc");
    }]();
}

@end
