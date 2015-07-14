//
//  WebViewController.h
//  OCJSInteractDemo
//
//  Created by Heng Zeng on 6/8/15.
//  Copyright (c) 2015 thoughtworks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <JavaScriptCore/JavaScriptCore.h>

@protocol DemoJSExports <JSExport>
@property double x;
@property double y;
- (void)closeWebView:(NSString *)paramStr;
- (void)testMultiParamFunction:(NSString *)firstParam secondParam:(NSString *)secondParam;
- (void)testProperties:(NSString *)param;
@end

@interface WebViewController : UIViewController <DemoJSExports>

@end


