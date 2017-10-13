//
//  CTRouterMaker.h
//  CTRouterDemo
//
//  Created by wenjie on 2017/10/12.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CTRouterMaker : NSObject

@property (nonatomic, copy) CTRouterMaker *(^key)(NSString *key);
@property (nonatomic, copy) CTRouterMaker *(^className)(NSString *className);
@property (nonatomic, copy) CTRouterMaker *(^url)(NSString *url);
@property (nonatomic, copy) CTRouterMaker *(^param)(NSDictionary *param);
@property (nonatomic, copy) CTRouterMaker *(^animationNone)(BOOL animationNone);
@property (nonatomic, copy) CTRouterMaker *(^nib)(BOOL nib);
@property (nonatomic, copy) CTRouterMaker *(^modal)(BOOL modal);

@end
