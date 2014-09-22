//
//  ViewController.h
//  webview
//
//  Created by Andrew Furnival on 20/09/2014.
//  Copyright (c) 2014 Andrew Furnival. All rights reserved.
//

#import "WHWebViewDelegate.h"

@class WHAppBrowserViewController;

@interface ViewController : UIViewController <UIWebViewDelegate>{
    WHWebViewDelegate* _webViewDelegate;
}


@end

