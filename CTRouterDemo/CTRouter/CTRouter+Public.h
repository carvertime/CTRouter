//
//  CTRouter+Public.h
//  CTRouterDemo
//
//  Created by wenjie on 2017/10/12.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "CTRouter.h"
#import "CTRouterMaker.h"

@interface CTRouter (Public)


/**
 注册Router

 @param block 配置属性 key url className
 */
- (void)ct_registerRouters:(void(^)(CTRouterMaker *make))block;


/**
 跳转页面

 @param block 配置属性 key url className
 */
- (void(^)())ct_makeRouters:(void(^)(CTRouterMaker *make))block;


/**
 跳转页面+回调传值

 @param block 配置属性 key url className
 @param callback 回调返回值
 */
- (void(^)())ct_makeRouters:(void(^)(CTRouterMaker *make))block
                   callback:(void(^)(NSDictionary *dic))callback;

/**
 返回上一个页面

 @param animation 是否有返回动画
 */
- (void)ct_popAnimation:(BOOL)animation;

@end
