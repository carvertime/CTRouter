//
//  CTRouter+Private.h
//  CTRouterDemo
//
//  Created by wenjie on 2017/10/12.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "CTRouter.h"

@interface CTRouter (Private)

- (void)registerRouterVO:(CTRouterVO *)aVO withKey:(NSString *)key;
- (void)routerWithRouterVO:(CTRouterVO *)routerVO;

@end
