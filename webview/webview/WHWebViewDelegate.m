//
//  WHWebViewDelegate.m
//  webview
//
//  Created by Andrew Furnival on 22/09/2014.
//  Copyright (c) 2014 Andrew Furnival. All rights reserved.
//


#import "WHWebViewDelegate.h"


typedef enum {
    STATE_IDLE = 0,
    STATE_WAITING_FOR_LOAD_START = 1,
    STATE_WAITING_FOR_LOAD_FINISH = 2,
    STATE_IOS5_POLLING_FOR_LOAD_START = 3,
    STATE_IOS5_POLLING_FOR_LOAD_FINISH = 4,
    STATE_CANCELLED = 5
} State;


@implementation WHWebViewDelegate

- (id)initWithDelegate:(NSObject <UIWebViewDelegate>*)delegate
{
    self = [super init];
    if (self != nil) {
        _delegate = delegate;
//        _loadCount = -1;
        _state = STATE_IDLE;
    }
    return self;
}




@end