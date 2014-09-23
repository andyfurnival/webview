//
//  ViewController.m
//  webview
//
//  Created by Andrew Furnival on 20/09/2014.
//  Copyright (c) 2014 Andrew Furnival. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CGRect webViewBounds = self.view.bounds;
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL: [NSURL URLWithString: @"http://mobet.williamhill.es"]];
    
    
    if (NSClassFromString(@"WKWebView") ) {
#ifdef __IPHONE_8_0
        WKUserContentController* userContentController = [[WKUserContentController alloc] init];
        
        
        WKWebViewConfiguration* configuration = [[WKWebViewConfiguration alloc] init];
        configuration.userContentController = userContentController;
        
        WKWebView *webview = [[WKWebView alloc] initWithFrame:webViewBounds configuration:configuration];
        [webview loadRequest: request];
        
        [self.view addSubview:webview];
#endif
    } else {
        UIWebView *uiwebview = [[UIWebView alloc] initWithFrame:webViewBounds];
        [uiwebview loadRequest: request];
        [self.view addSubview:uiwebview];
    }


}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
