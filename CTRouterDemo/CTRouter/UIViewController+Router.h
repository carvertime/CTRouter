//
//  UIViewController+Router.h
//  CTRouterDemo
//
//  Created by wenjie on 2017/10/12.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIViewController (Router)


/**
  上个页面 Router 传过来的参数
 */
@property (nonatomic, strong) NSDictionary *extraData;


/**
 页面回调传值的Block
 */
@property (nonatomic, copy) void(^callback)(NSDictionary *param);

@end
