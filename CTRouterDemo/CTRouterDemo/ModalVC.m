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
        [[CTRouter sharedInstance] ct_makeRouters:^(CTRouterMaker *make) {
            make.key(@"xibvc");
        }]();
    });
   
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
