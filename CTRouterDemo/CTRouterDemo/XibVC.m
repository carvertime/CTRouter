//
//  XibVC.m
//  CTRouterDemo
//
//  Created by wenjie on 2017/10/13.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "XibVC.h"
#import "CTRouter+Public.h"
#import "UIViewController+Router.h"

@interface XibVC ()

@end

@implementation XibVC

+ (void)load{
    [[CTRouter sharedInstance] ct_registerRouters:^(CTRouterMaker *make) {
        make.nib(true).key(@"xibvc").className(NSStringFromClass(self));
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];
    // Do any additional setup after loading the view from its nib.
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
