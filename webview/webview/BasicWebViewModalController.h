//
//  BasicWebViewModalController.h
//  webview
//
//  Created by Andrew Furnival on 21/09/2014.
//  Copyright (c) 2014 Andrew Furnival. All rights reserved.
//

#import <WebKit/WebKit.h>
@class BasicWebViewController;

@interface BasicWebViewModalController : UINavigationController

- (instancetype)initWithURL:(NSURL *)url;
- (instancetype)initWithURL:(NSURL *)url userScript:(WKUserScript *)script;

- (instancetype)initWithAddress:(NSString *)urlString;
- (instancetype)initWithAddress:(NSString *)string userScript:(WKUserScript *)script;

- (instancetype)initWithRequest:(NSURLRequest *)request;
- (instancetype)initWithRequest:(NSURLRequest *)request userScript:(WKUserScript *)script NS_DESIGNATED_INITIALIZER;

- (instancetype)initWithCustomWebKitControllerClass:(Class)pClass address:(NSString *)address;

@property (nonatomic, readonly) BasicWebViewController *webKitViewController;

@end