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
        [[CTRouter sharedInstance] ct_makeRouters:^(CTRouterMaker *make) {
            make.key(@"next");
        }]();
    });
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
