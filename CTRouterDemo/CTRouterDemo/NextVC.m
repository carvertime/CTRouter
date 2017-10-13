//
//  NextVC.m
//  CTRouterDemo
//
//  Created by wenjie on 2017/10/13.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "NextVC.h"
#import "CTRouter+Public.h"
#import "UIViewController+Router.h"

@interface NextVC ()

@end

@implementation NextVC

+ (void)load{
    [[CTRouter sharedInstance] ct_registerRouters:^(CTRouterMaker *make) {
        make.key(@"next").className(NSStringFromClass(self));
    }];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    [[CTRouter sharedInstance] ct_makeRouters:^(CTRouterMaker *make) {
        make.key(@"modal");
    }]();
    NSLog(@"self.presentedViewController = %@",self.presentingViewController);
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
