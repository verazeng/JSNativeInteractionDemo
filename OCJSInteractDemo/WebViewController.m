//
//  WebViewController.m
//  OCJSInteractDemo
//
//  Created by Heng Zeng on 6/8/15.
//  Copyright (c) 2015 thoughtworks. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController () <UIWebViewDelegate>
@property UIWebView *webview;
@end

@implementation WebViewController
@synthesize x = _x;
@synthesize y = _y;

- (void)loadView {
    [super loadView];

    _x = 10;
    _y = 20;
    
    _webview = [[UIWebView alloc] initWithFrame:self.view.bounds];
    NSString *htmlStr = [NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"test" ofType:@"html"] encoding:NSUTF8StringEncoding error:nil];
    [_webview loadHTMLString:htmlStr baseURL:nil];
    _webview.delegate = self;
    [self.view addSubview:_webview];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    [webView stringByEvaluatingJavaScriptFromString:@"console.log('test');"];
    
    JSContext *context =  [webView valueForKeyPath:@"documentView.webView.mainFrame.javaScriptContext"]; // Undocumented access
    context[@"mobileObject"] = self;
    context[@"logUsingNativeBlock"] = ^(NSString *paramStr){
        NSLog(@"%@", paramStr);
    };
    context[@"multiParamslogUsingNativeBlock"] = ^(NSString *paramStr, NSDictionary *paramDic){
        NSLog(@"%@, %@", paramStr, paramDic);
    };
}

- (void)closeWebView:(NSString *)paramStr {
    NSLog(@"%@", paramStr);
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)testMultiParamFunction:(NSString *)firstParam secondParam:(NSString *)secondParam {
    NSLog(@"firstParam:%@, SecondParam:%@", firstParam, secondParam);
}

- (void)testProperties:(NSString *)param {
    NSLog(@"%@", param);
}

@end

