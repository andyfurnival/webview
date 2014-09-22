//
//  BasicWebViewModalController.m
//  webview
//
//  Created by Andrew Furnival on 21/09/2014.
//  Copyright (c) 2014 Andrew Furnival. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BasicWebViewModalController.h"
#import "BasicWebViewController.h"

@interface BasicWebViewModalController ()


@end

@implementation BasicWebViewModalController

- (instancetype)init
{
    return [self initWithRequest:nil];
}

- (instancetype)initWithAddress:(NSString *)urlString
{
    return [self initWithURL:[NSURL URLWithString:urlString]];
}

- (instancetype)initWithURL:(NSURL *)url
{
    return [self initWithURL:url userScript:nil];
}

- (instancetype)initWithAddress:(NSString *)string userScript:(WKUserScript *)script
{
    return [self initWithURL:[NSURL URLWithString:string] userScript:script];
}

- (instancetype)initWithURL:(NSURL *)url userScript:(WKUserScript *)script
{
    return [self initWithRequest:[NSURLRequest requestWithURL:url] userScript:script];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.webKitViewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(closeController)];
}

- (instancetype)initWithRequest:(NSURLRequest *)request
{
    return [self initWithRequest:request userScript:nil];
}

- (instancetype)initWithRequest:(NSURLRequest *)request userScript:(WKUserScript *)script
{
    _webKitViewController = [[BasicWebViewController alloc] initWithRequest:request userScript:script];
    if (self = [super initWithRootViewController:self.webKitViewController]) {
    }
    return self;
}

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"
- (instancetype)initWithCustomWebKitControllerClass:(Class)pClass address:(NSString *)address
{
    if (pClass) {
        _webKitViewController = [[pClass alloc] initWithAddress:address];
    } else {
        _webKitViewController = [[BasicWebViewController alloc] initWithAddress:address];
    }
    
    if (self = [super initWithRootViewController:self.webKitViewController]) {
    }
    return self;
}
#pragma clang diagnostic pop

- (void)closeController
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end