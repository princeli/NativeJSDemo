//
//  NJTwoViewController.m
//  NativeJSDemo
//
//  Created by ly on 15/12/10.
//  Copyright © 2015年 princeli. All rights reserved.
//

#import "NJTwoViewController.h"
#import "WebViewJavaScriptBridge.h"

@interface NJTwoViewController ()
@property WebViewJavascriptBridge *bridge;
@end

@implementation NJTwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated
{
    // 创建UIWebView对象
    CGRect frame = CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y, self.view.bounds.size.width, self.view.bounds.size.height-44);
    UIWebView * webView = [[UIWebView alloc] initWithFrame:frame];
    [self.view addSubview:webView];
    // 配置logging
    [WebViewJavascriptBridge enableLogging];
    
    // 创建WebViewJavascriptBridge对象并与UIWebView对象绑定
    self.bridge = [WebViewJavascriptBridge bridgeForWebView:webView handler:^(id data, WVJBResponseCallback responseCallback) {
        NSLog(@"Received message from javascript: %@", data);
        responseCallback(@"Right back atcha");
    }];
    
    [self loadExamplePage:webView];
}

- (void)loadExamplePage:(UIWebView*)webView {
    NSURL *baseURL =[[NSURL alloc] initWithString:@"http://yyxx.10086.cn/v.html"];
    [webView loadRequest:[NSURLRequest requestWithURL:baseURL]];
    //[webView loadHTMLString:appHtml baseURL:baseURL];
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
