//
//  MyPoint.h
//  OCJSInteractDemo
//
//  Created by Heng Zeng on 6/8/15.
//  Copyright (c) 2015 thoughtworks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

@class MyPoint;
@protocol MyPointProtocol <JSExport>
@property double x;
@property double y;
+ (MyPoint *)makePointWithX:(double)x Y:(double)y;
@end

@interface MyPoint : NSObject <MyPointProtocol>

@end
