//
//  MyPoint.m
//  OCJSInteractDemo
//
//  Created by Heng Zeng on 6/8/15.
//  Copyright (c) 2015 thoughtworks. All rights reserved.
//

#import "MyPoint.h"

@implementation MyPoint
@synthesize x = _x;
@synthesize y = _y;

- (instancetype)initWithX:(double)x Y:(double)y {
    self = [super init];
    if (self) {
        _x = x;
        _y = y;
    }
    return self;
}

+ (MyPoint *)makePointWithX:(double)x Y:(double)y {
    return [[MyPoint alloc] initWithX:x Y:y];
}

@end
