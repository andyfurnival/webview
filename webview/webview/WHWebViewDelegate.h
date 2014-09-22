//
//  WHWebViewDelegate.h
//  webview
//
//  Created by Andrew Furnival on 22/09/2014.
//  Copyright (c) 2014 Andrew Furnival. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WHWebViewDelegate : NSObject <UIWebViewDelegate>{
    __weak NSObject <UIWebViewDelegate>* _delegate;
    NSInteger _state;
}

- (id)initWithDelegate:(NSObject <UIWebViewDelegate>*)delegate;

@end