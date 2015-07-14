//
//  ViewController.h
//  OCJSInteractDemo
//
//  Created by Heng Zeng on 6/5/15.
//  Copyright (c) 2015 thoughtworks. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TestProtocol <NSObject>

@property double x;
@property double y;

- (void)test;

@end

@interface ViewController : UIViewController  <TestProtocol>

@end

