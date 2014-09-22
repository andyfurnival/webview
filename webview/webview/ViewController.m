//
//  ViewController.m
//  webview
//
//  Created by Andrew Furnival on 20/09/2014.
//  Copyright (c) 2014 Andrew Furnival. All rights reserved.
//

#import "ViewController.h"
#import "BasicWebViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)openModally:(UIButton *)sender {
    NSURL *url = [NSURL URLWithString:@"https://mobet.williamhill.es"];
    BasicWebViewModalController *controller = [[BasicWebViewModalController alloc] initWithURL:url];
    [self presentViewController:controller animated:YES completion:nil];
}

- (IBAction)pushOnNavController:(UIButton *)sender {
    NSURL *url = [NSURL URLWithString:@"https://mobet.williamhill.es"];
    BasicWebViewController *controller = [[BasicWebViewController alloc] initWithURL:url];
    self.navigationController.hidesBarsOnSwipe = YES;
    [self.navigationController pushViewController:controller animated:YES];
}

- (IBAction)openWithCustomColors:(UIButton *)sender {
    NSURL *url = [NSURL URLWithString:@"https://mobet.williamhill.es"];
    BasicWebViewModalController *controller = [[BasicWebViewModalController alloc] initWithURL:url];
    controller.webKitViewController.navigationBarTintColor = [UIColor brownColor];
    controller.webKitViewController.toolbarTintColor = [UIColor brownColor];
    [self presentViewController:controller animated:YES completion:nil];
}

@end