//
//  ViewController.m
//  CTRouterDemo
//
//  Created by wenjie on 2017/10/13.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "ViewController.h"
#import "CTRouter+Public.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self routerTest];
    });
}

- (void)routerTest{
    [[CTRouter sharedInstance] ct_makeRouters:^(CTRouterMaker *make) {
        make.key(@"next");
    } callback:^(NSDictionary *dic) {
        NSLog(@"页面回调的Block dic : %@",dic);
    }]();// 注：此处需要加（）执行跳转
}


@end
