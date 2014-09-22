//
//  WHAppBrowser.m
//  webview
//
//  Created by Andrew Furnival on 22/09/2014.
//  Copyright (c) 2014 Andrew Furnival. All rights reserved.
//


#import "WHAppBrowser.h"


#define    kInAppBrowserTargetSelf @"_self"
#define    kInAppBrowserTargetSystem @"_system"
#define    kInAppBrowserTargetBlank @"_blank"

#define    kInAppBrowserToolbarBarPositionBottom @"bottom"
#define    kInAppBrowserToolbarBarPositionTop @"top"

#define    TOOLBAR_HEIGHT 44.0
#define    LOCATIONBAR_HEIGHT 21.0
#define    FOOTER_HEIGHT ((TOOLBAR_HEIGHT) + (LOCATIONBAR_HEIGHT))

#pragma mark WHAppBrowser

@interface WHAppBrowser () {
    NSInteger _previousStatusBarStyle;
}
@end

@implementation WHAppBrowser

- (WHAppBrowser*)initWithWebView:(UIWebView*)theWebView
{
    self = [super initWithWebView:theWebView];
    if (self != nil) {
        _previousStatusBarStyle = -1;
//        _callbackIdPattern = nil;
    }
    
    return self;
}






- (void)open:(NSURL*)url
{
//    CDVPluginResult* pluginResult;
//    
//    NSString* url = [command argumentAtIndex:0];
//    NSString* target = [command argumentAtIndex:1 withDefault:kInAppBrowserTargetSelf];
//    NSString* options = [command argumentAtIndex:2 withDefault:@"" andClass:[NSString class]];
//    
//    self.callbackId = command.callbackId;

    if (url != nil) {
//        NSURL* baseUrl = [self.webView.request URL];
//        NSURL* absoluteUrl = [[NSURL URLWithString:url relativeToURL:baseUrl] absoluteURL];
        
//        if ([self isSystemUrl:absoluteUrl]) {
//            target = kInAppBrowserTargetSystem;
//        }
//
        [self openInInAppBrowser:url:url];
//        
//        if ([target isEqualToString:kInAppBrowserTargetSelf]) {
//            [self openInCordovaWebView:url withOptions:options];
//        } else if ([target isEqualToString:kInAppBrowserTargetSystem]) {
//            [self openInSystem:url];
//        } else { // _blank or anything else
//            [self openInInAppBrowser:url withOptions:options];
//        }
//        
//        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    }
//    else {
//        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"incorrect number of arguments"];
//    }
//    
//    [pluginResult setKeepCallback:[NSNumber numberWithBool:YES]];
//    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}


- (void)openInInAppBrowser:(NSURL*)url
{
//    CDVInAppBrowserOptions* browserOptions = [CDVInAppBrowserOptions parseOptions:options];
    
//    if (browserOptions.clearcache) {
//        NSHTTPCookie *cookie;
//        NSHTTPCookieStorage *storage = [NSHTTPCookieStorage sharedHTTPCookieStorage];
//        for (cookie in [storage cookies])
//        {
//            if (![cookie.domain isEqual: @".^filecookies^"]) {
//                [storage deleteCookie:cookie];
//            }
//        }
//    }
//    
//    if (browserOptions.clearsessioncache) {
//        NSHTTPCookie *cookie;
//        NSHTTPCookieStorage *storage = [NSHTTPCookieStorage sharedHTTPCookieStorage];
//        for (cookie in [storage cookies])
//        {
//            if (![cookie.domain isEqual: @".^filecookies^"] && cookie.isSessionOnly) {
//                [storage deleteCookie:cookie];
//            }
//        }
//    }
    
    if (self.appBrowserViewController == nil) {
//        NSString* originalUA = [CDVUserAgentUtil originalUserAgent];
        self.appBrowserViewController = [[WHAppBrowserViewController alloc] ];
//        self.appBrowserViewController.navigationDelegate = self;
        
//        if ([self.viewController conformsToProtocol:@protocol(CDVScreenOrientationDelegate)]) {
//            self.inAppBrowserViewController.orientationDelegate = (UIViewController <CDVScreenOrientationDelegate>*)self.viewController;
//        }
    }
    
//    [self.appBrowserViewController showLocationBar:browserOptions.location];
//    [self.appBrowserViewController showToolBar:browserOptions.toolbar :browserOptions.toolbarposition];
//    if (browserOptions.closebuttoncaption != nil) {
//        [self.appBrowserViewController setCloseButtonTitle:browserOptions.closebuttoncaption];
//    }
//    // Set Presentation Style
//    UIModalPresentationStyle presentationStyle = UIModalPresentationFullScreen; // default
//    if (browserOptions.presentationstyle != nil) {
//        if ([[browserOptions.presentationstyle lowercaseString] isEqualToString:@"pagesheet"]) {
//            presentationStyle = UIModalPresentationPageSheet;
//        } else if ([[browserOptions.presentationstyle lowercaseString] isEqualToString:@"formsheet"]) {
//            presentationStyle = UIModalPresentationFormSheet;
//        }
//    }
//    self.appBrowserViewController.modalPresentationStyle = presentationStyle;
//    
//    // Set Transition Style
//    UIModalTransitionStyle transitionStyle = UIModalTransitionStyleCoverVertical; // default
//    if (browserOptions.transitionstyle != nil) {
//        if ([[browserOptions.transitionstyle lowercaseString] isEqualToString:@"fliphorizontal"]) {
//            transitionStyle = UIModalTransitionStyleFlipHorizontal;
//        } else if ([[browserOptions.transitionstyle lowercaseString] isEqualToString:@"crossdissolve"]) {
//            transitionStyle = UIModalTransitionStyleCrossDissolve;
//        }
//    }
//    self.inAppBrowserViewController.modalTransitionStyle = transitionStyle;
//    
//    // prevent webView from bouncing
//    if (browserOptions.disallowoverscroll) {
//        if ([self.inAppBrowserViewController.webView respondsToSelector:@selector(scrollView)]) {
//            ((UIScrollView*)[self.inAppBrowserViewController.operationsDelegate scrollView]).bounces = NO;
//        } else {
//            for (id subview in self.inAppBrowserViewController.webView.subviews) {
//                if ([[subview class] isSubclassOfClass:[UIScrollView class]]) {
//                    ((UIScrollView*)subview).bounces = NO;
//                }
//            }
//        }
//    }
//    
//    CDVWebViewPreferences* prefs = [[CDVWebViewPreferences alloc] initWithWebView:self.inAppBrowserViewController.webView];
//    [prefs updateSettings: @{
//                             @"EnableViewportScale" : @(browserOptions.enableviewportscale),
//                             @"MediaPlaybackRequiresUserAction" : @(browserOptions.mediaplaybackrequiresuseraction),
//                             @"AllowInlineMediaPlayback" : @(browserOptions.allowinlinemediaplayback),
//                             @"KeyboardDisplayRequiresUserAction" : @(browserOptions.keyboarddisplayrequiresuseraction),
//                             @"SuppressesIncrementalRendering" : @(browserOptions.suppressesincrementalrendering)
//                             }];
    
    [self.appBrowserViewController navigateTo:url];
//    if (!browserOptions.hidden) {
//        [self show:nil];
//    }
}



// This is a helper method for the inject{Script|Style}{Code|File} API calls, which
// provides a consistent method for injecting JavaScript code into the document.
//
// If a wrapper string is supplied, then the source string will be JSON-encoded (adding
// quotes) and wrapped using string formatting. (The wrapper string should have a single
// '%@' marker).
//
// If no wrapper is supplied, then the source string is executed directly.





- (BOOL)webView:(UIWebView*)theWebView shouldStartLoadWithRequest:(NSURLRequest*)request navigationType:(UIWebViewNavigationType)navigationType
{
//    NSURL* url = request.URL;
//    BOOL isTopLevelNavigation = [request.URL isEqual:[request mainDocumentURL]];
    
    // See if the url uses the 'gap-iab' protocol. If so, the host should be the id of a callback to execute,
    // and the path, if present, should be a JSON-encoded value to pass to the callback.
//    if ([[url scheme] isEqualToString:@"gap-iab"]) {
//        NSString* scriptCallbackId = [url host];
//        CDVPluginResult* pluginResult = nil;
//        
//        if ([self isValidCallbackId:scriptCallbackId]) {
//            NSString* scriptResult = [url path];
//            NSError* __autoreleasing error = nil;
//            
//            // The message should be a JSON-encoded array of the result of the script which executed.
//            if ((scriptResult != nil) && ([scriptResult length] > 1)) {
//                scriptResult = [scriptResult substringFromIndex:1];
//                NSData* decodedResult = [NSJSONSerialization JSONObjectWithData:[scriptResult dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&error];
//                if ((error == nil) && [decodedResult isKindOfClass:[NSArray class]]) {
//                    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsArray:(NSArray*)decodedResult];
//                } else {
//                    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_JSON_EXCEPTION];
//                }
//            } else {
//                pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsArray:@[]];
//            }
//            [self.commandDelegate sendPluginResult:pluginResult callbackId:scriptCallbackId];
//            return NO;
//        }
//    } else if ((self.callbackId != nil) && isTopLevelNavigation) {
//        // Send a loadstart event for each top-level navigation (includes redirects).
//        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK
//                                                      messageAsDictionary:@{@"type":@"loadstart", @"url":[url absoluteString]}];
//        [pluginResult setKeepCallback:[NSNumber numberWithBool:YES]];
//        
//        [self.commandDelegate sendPluginResult:pluginResult callbackId:self.callbackId];
//    }
    
    return YES;
}

- (void)webViewDidStartLoad:(UIWebView*)theWebView
{
//    _injectedIframeBridge = NO;
}

- (void)webViewDidFinishLoad:(UIWebView*)theWebView
{
//    if (self.callbackId != nil) {
//        // TODO: It would be more useful to return the URL the page is actually on (e.g. if it's been redirected).
//        NSString* url = [self.inAppBrowserViewController.currentURL absoluteString];
//        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK
//                                                      messageAsDictionary:@{@"type":@"loadstop", @"url":url}];
//        [pluginResult setKeepCallback:[NSNumber numberWithBool:YES]];
//        
//        [self.commandDelegate sendPluginResult:pluginResult callbackId:self.callbackId];
//    }
}

- (void)webView:(UIWebView*)theWebView didFailLoadWithError:(NSError*)error
{
//    if (self.callbackId != nil) {
//        NSString* url = [self.inAppBrowserViewController.currentURL absoluteString];
//        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR
//                                                      messageAsDictionary:@{@"type":@"loaderror", @"url":url, @"code": [NSNumber numberWithInteger:error.code], @"message": error.localizedDescription}];
//        [pluginResult setKeepCallback:[NSNumber numberWithBool:YES]];
//        
//        [self.commandDelegate sendPluginResult:pluginResult callbackId:self.callbackId];
//    }
}

- (void)browserExit
{
//    if (self.callbackId != nil) {
//        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK
//                                                      messageAsDictionary:@{@"type":@"exit"}];
//        [self.commandDelegate sendPluginResult:pluginResult callbackId:self.callbackId];
//        self.callbackId = nil;
//    }
    // Set navigationDelegate to nil to ensure no callbacks are received from it.
//    self.appBrowserViewController.navigationDelegate = nil;
    // Don't recycle the ViewController since it may be consuming a lot of memory.
    // Also - this is required for the PDF/User-Agent bug work-around.
    self.appBrowserViewController = nil;
    
    if (IsAtLeastiOSVersion(@"7.0")) {
        [[UIApplication sharedApplication] setStatusBarStyle:_previousStatusBarStyle];
    }
    
    _previousStatusBarStyle = -1; // this value was reset before reapplying it. caused statusbar to stay black on ios7
}

@end

#pragma mark WHAppBrowserViewController

@implementation WHAppBrowserViewController

@synthesize currentURL;

//- (id)initWithUserAgent:(NSString*)userAgent prevUserAgent:(NSString*)prevUserAgent browserOptions: (CDVInAppBrowserOptions*) browserOptions
//{
//    self = [super init];
//    if (self != nil) {
//        _userAgent = userAgent;
//        _prevUserAgent = prevUserAgent;
//        _browserOptions = browserOptions;
//        _webViewDelegate = [[CDVWebViewDelegate alloc] initWithDelegate:self];
//        [self createViews];
//    }
//    
//    return self;
//}

- (void)createViews
{
    // We create the views in code for primarily for ease of upgrades and not requiring an external .xib to be included
    
    CGRect webViewBounds = self.view.bounds;
//    BOOL toolbarIsAtBottom = ![_browserOptions.toolbarposition isEqualToString:kInAppBrowserToolbarBarPositionTop];
//    webViewBounds.size.height -= _browserOptions.location ? FOOTER_HEIGHT : TOOLBAR_HEIGHT;
    
    if (NSClassFromString(@"WKWebView") /*&& _browserOptions.usewkwebview*/) {
#ifdef __IPHONE_8_0
        WKUserContentController* userContentController = [[WKUserContentController alloc] init];
        
        // scriptMessageHandler is the object that conforms to the WKScriptMessageHandler protocol
        // see https://developer.apple.com/library/prerelease/ios/documentation/WebKit/Reference/WKScriptMessageHandler_Ref/index.html#//apple_ref/swift/intf/WKScriptMessageHandler
        //        if ([_commandDelegate conformsToProtocol:@protocol(WKScriptMessageHandler)]) {
        //            [userContentController addScriptMessageHandler:self name:@"cordova"];
        //        }
        
        WKWebViewConfiguration* configuration = [[WKWebViewConfiguration alloc] init];
        configuration.userContentController = userContentController;
        
        self.webView = [[WKWebView alloc] initWithFrame:webViewBounds configuration:configuration];
        WHVWebViewUIDelegate* webViewUIDelegate = [[WHWebViewUIDelegate alloc] initWithTitle:[[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleDisplayName"]];
        ((WKWebView*)self.webView).UIDelegate = webViewUIDelegate;
#endif
    } else {
        self.webView = [[UIWebView alloc] initWithFrame:webViewBounds];
    }
    
    self.operationsDelegate = [[CDVWebViewOperationsDelegate alloc] initWithWebView:self.webView];
    
    self.webView.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
    
    [self.view addSubview:self.webView];
    [self.view sendSubviewToBack:self.webView];
    
    [self.operationsDelegate setNavigationDelegate:_webViewDelegate]; // TODO: WKWebView navigationDelegate here as well
    self.webView.backgroundColor = [UIColor whiteColor];
    
    
    CDVWebViewPreferences* prefs = [[CDVWebViewPreferences alloc] initWithWebView:self.webView];
    [prefs updateSettings:@{ @"EnableViewportScale" : @NO }];
    
    self.webView.clearsContextBeforeDrawing = YES;
    self.webView.clipsToBounds = YES;
    self.webView.contentMode = UIViewContentModeScaleToFill;
    self.webView.multipleTouchEnabled = YES;
    self.webView.opaque = YES;
    self.webView.userInteractionEnabled = YES;
    
    self.spinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
    self.spinner.alpha = 1.000;
    self.spinner.autoresizesSubviews = YES;
    self.spinner.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleTopMargin;
    self.spinner.clearsContextBeforeDrawing = NO;
    self.spinner.clipsToBounds = NO;
    self.spinner.contentMode = UIViewContentModeScaleToFill;
    self.spinner.frame = CGRectMake(454.0, 231.0, 20.0, 20.0);
    self.spinner.hidden = YES;
    self.spinner.hidesWhenStopped = YES;
    self.spinner.multipleTouchEnabled = NO;
    self.spinner.opaque = NO;
    self.spinner.userInteractionEnabled = NO;
    [self.spinner stopAnimating];
    
    self.closeButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(close)];
    self.closeButton.enabled = YES;
    
    UIBarButtonItem* flexibleSpaceButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    UIBarButtonItem* fixedSpaceButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    fixedSpaceButton.width = 20;
    
    float toolbarY = toolbarIsAtBottom ? self.view.bounds.size.height - TOOLBAR_HEIGHT : 0.0;
    CGRect toolbarFrame = CGRectMake(0.0, toolbarY, self.view.bounds.size.width, TOOLBAR_HEIGHT);
    
    self.toolbar = [[UIToolbar alloc] initWithFrame:toolbarFrame];
    self.toolbar.alpha = 1.000;
    self.toolbar.autoresizesSubviews = YES;
    self.toolbar.autoresizingMask = toolbarIsAtBottom ? (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin) : UIViewAutoresizingFlexibleWidth;
    self.toolbar.barStyle = UIBarStyleBlackOpaque;
    self.toolbar.clearsContextBeforeDrawing = NO;
    self.toolbar.clipsToBounds = NO;
    self.toolbar.contentMode = UIViewContentModeScaleToFill;
    self.toolbar.hidden = NO;
    self.toolbar.multipleTouchEnabled = NO;
    self.toolbar.opaque = NO;
    self.toolbar.userInteractionEnabled = YES;
    
    CGFloat labelInset = 5.0;
    float locationBarY = toolbarIsAtBottom ? self.view.bounds.size.height - FOOTER_HEIGHT : self.view.bounds.size.height - LOCATIONBAR_HEIGHT;
    
    self.addressLabel = [[UILabel alloc] initWithFrame:CGRectMake(labelInset, locationBarY, self.view.bounds.size.width - labelInset, LOCATIONBAR_HEIGHT)];
    self.addressLabel.adjustsFontSizeToFitWidth = NO;
    self.addressLabel.alpha = 1.000;
    self.addressLabel.autoresizesSubviews = YES;
    self.addressLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin;
    self.addressLabel.backgroundColor = [UIColor clearColor];
    self.addressLabel.baselineAdjustment = UIBaselineAdjustmentAlignCenters;
    self.addressLabel.clearsContextBeforeDrawing = YES;
    self.addressLabel.clipsToBounds = YES;
    self.addressLabel.contentMode = UIViewContentModeScaleToFill;
    self.addressLabel.enabled = YES;
    self.addressLabel.hidden = NO;
    self.addressLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    
    if ([self.addressLabel respondsToSelector:NSSelectorFromString(@"setMinimumScaleFactor:")]) {
        [self.addressLabel setValue:@(10.0/[UIFont labelFontSize]) forKey:@"minimumScaleFactor"];
    } else if ([self.addressLabel respondsToSelector:NSSelectorFromString(@"setMinimumFontSize:")]) {
        [self.addressLabel setValue:@(10.0) forKey:@"minimumFontSize"];
    }
    
    self.addressLabel.multipleTouchEnabled = NO;
    self.addressLabel.numberOfLines = 1;
    self.addressLabel.opaque = NO;
    self.addressLabel.shadowOffset = CGSizeMake(0.0, -1.0);
    self.addressLabel.text = NSLocalizedString(@"Loading...", nil);
    self.addressLabel.textAlignment = NSTextAlignmentLeft;
    self.addressLabel.textColor = [UIColor colorWithWhite:1.000 alpha:1.000];
    self.addressLabel.userInteractionEnabled = NO;
    
    NSString* frontArrowString = NSLocalizedString(@"►", nil); // create arrow from Unicode char
    self.forwardButton = [[UIBarButtonItem alloc] initWithTitle:frontArrowString style:UIBarButtonItemStylePlain target:self action:@selector(goForward:)];
    self.forwardButton.enabled = YES;
    self.forwardButton.imageInsets = UIEdgeInsetsZero;
    
    NSString* backArrowString = NSLocalizedString(@"◄", nil); // create arrow from Unicode char
    self.backButton = [[UIBarButtonItem alloc] initWithTitle:backArrowString style:UIBarButtonItemStylePlain target:self action:@selector(goBack:)];
    self.backButton.enabled = YES;
    self.backButton.imageInsets = UIEdgeInsetsZero;
    
    [self.toolbar setItems:@[self.closeButton, flexibleSpaceButton, self.backButton, fixedSpaceButton, self.forwardButton]];
    
    self.view.backgroundColor = [UIColor grayColor];
    [self.view addSubview:self.toolbar];
    [self.view addSubview:self.addressLabel];
    [self.view addSubview:self.spinner];
}

- (void) setWebViewFrame : (CGRect) frame {
    NSLog(@"Setting the WebView's frame to %@", NSStringFromCGRect(frame));
    [self.webView setFrame:frame];
}

- (void)setCloseButtonTitle:(NSString*)title
{
    // the advantage of using UIBarButtonSystemItemDone is the system will localize it for you automatically
    // but, if you want to set this yourself, knock yourself out (we can't set the title for a system Done button, so we have to create a new one)
    self.closeButton = nil;
    self.closeButton = [[UIBarButtonItem alloc] initWithTitle:title style:UIBarButtonItemStyleBordered target:self action:@selector(close)];
    self.closeButton.enabled = YES;
    self.closeButton.tintColor = [UIColor colorWithRed:60.0 / 255.0 green:136.0 / 255.0 blue:230.0 / 255.0 alpha:1];
    
    NSMutableArray* items = [self.toolbar.items mutableCopy];
    [items replaceObjectAtIndex:0 withObject:self.closeButton];
    [self.toolbar setItems:items];
}

- (void)showLocationBar:(BOOL)show
{
    CGRect locationbarFrame = self.addressLabel.frame;
    
    BOOL toolbarVisible = !self.toolbar.hidden;
    
    // prevent double show/hide
    if (show == !(self.addressLabel.hidden)) {
        return;
    }
    
    if (show) {
        self.addressLabel.hidden = NO;
        
        if (toolbarVisible) {
            // toolBar at the bottom, leave as is
            // put locationBar on top of the toolBar
            
            CGRect webViewBounds = self.view.bounds;
            webViewBounds.size.height -= FOOTER_HEIGHT;
            [self setWebViewFrame:webViewBounds];
            
            locationbarFrame.origin.y = webViewBounds.size.height;
            self.addressLabel.frame = locationbarFrame;
        } else {
            // no toolBar, so put locationBar at the bottom
            
            CGRect webViewBounds = self.view.bounds;
            webViewBounds.size.height -= LOCATIONBAR_HEIGHT;
            [self setWebViewFrame:webViewBounds];
            
            locationbarFrame.origin.y = webViewBounds.size.height;
            self.addressLabel.frame = locationbarFrame;
        }
    } else {
        self.addressLabel.hidden = YES;
        
        if (toolbarVisible) {
            // locationBar is on top of toolBar, hide locationBar
            
            // webView take up whole height less toolBar height
            CGRect webViewBounds = self.view.bounds;
            webViewBounds.size.height -= TOOLBAR_HEIGHT;
            [self setWebViewFrame:webViewBounds];
        } else {
            // no toolBar, expand webView to screen dimensions
            [self setWebViewFrame:self.view.bounds];
        }
    }
}

- (void)showToolBar:(BOOL)show : (NSString *) toolbarPosition
{
    CGRect toolbarFrame = self.toolbar.frame;
    CGRect locationbarFrame = self.addressLabel.frame;
    
    BOOL locationbarVisible = !self.addressLabel.hidden;
    
    // prevent double show/hide
    if (show == !(self.toolbar.hidden)) {
        return;
    }
    
    if (show) {
        self.toolbar.hidden = NO;
        CGRect webViewBounds = self.view.bounds;
        
        if (locationbarVisible) {
            // locationBar at the bottom, move locationBar up
            // put toolBar at the bottom
            webViewBounds.size.height -= FOOTER_HEIGHT;
            locationbarFrame.origin.y = webViewBounds.size.height;
            self.addressLabel.frame = locationbarFrame;
            self.toolbar.frame = toolbarFrame;
        } else {
            // no locationBar, so put toolBar at the bottom
            CGRect webViewBounds = self.view.bounds;
            webViewBounds.size.height -= TOOLBAR_HEIGHT;
            self.toolbar.frame = toolbarFrame;
        }
        
        if ([toolbarPosition isEqualToString:kInAppBrowserToolbarBarPositionTop]) {
            toolbarFrame.origin.y = 0;
            webViewBounds.origin.y += toolbarFrame.size.height;
            [self setWebViewFrame:webViewBounds];
        } else {
            toolbarFrame.origin.y = (webViewBounds.size.height + LOCATIONBAR_HEIGHT);
        }
        [self setWebViewFrame:webViewBounds];
        
    } else {
        self.toolbar.hidden = YES;
        
        if (locationbarVisible) {
            // locationBar is on top of toolBar, hide toolBar
            // put locationBar at the bottom
            
            // webView take up whole height less locationBar height
            CGRect webViewBounds = self.view.bounds;
            webViewBounds.size.height -= LOCATIONBAR_HEIGHT;
            [self setWebViewFrame:webViewBounds];
            
            // move locationBar down
            locationbarFrame.origin.y = webViewBounds.size.height;
            self.addressLabel.frame = locationbarFrame;
        } else {
            // no locationBar, expand webView to screen dimensions
            [self setWebViewFrame:self.view.bounds];
        }
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [self.operationsDelegate loadHTMLString:nil baseURL:nil];
    [CDVUserAgentUtil releaseLock:&_userAgentLockToken];
    [super viewDidUnload];
}



- (void)navigateTo:(NSURL*)url
{
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    [self.operationsDelegate loadRequest:request];
    
}

- (void)goBack:(id)sender
{
    [self.operationsDelegate goBack];
}

- (void)goForward:(id)sender
{
    [self.operationsDelegate goForward];
}

- (void)viewWillAppear:(BOOL)animated
{
    if (IsAtLeastiOSVersion(@"7.0")) {
        [[UIApplication sharedApplication] setStatusBarStyle:[self preferredStatusBarStyle]];
    }
    [self rePositionViews];
    
    [super viewWillAppear:animated];
}

//
// On iOS 7 the status bar is part of the view's dimensions, therefore it's height has to be taken into account.
// The height of it could be hardcoded as 20 pixels, but that would assume that the upcoming releases of iOS won't
// change that value.
//
- (float) getStatusBarOffset {
    CGRect statusBarFrame = [[UIApplication sharedApplication] statusBarFrame];
    float statusBarOffset = IsAtLeastiOSVersion(@"7.0") ? MIN(statusBarFrame.size.width, statusBarFrame.size.height) : 0.0;
    return statusBarOffset;
}

- (void) rePositionViews {
    if ([_browserOptions.toolbarposition isEqualToString:kInAppBrowserToolbarBarPositionTop]) {
        [self.webView setFrame:CGRectMake(self.webView.frame.origin.x, TOOLBAR_HEIGHT, self.webView.frame.size.width, self.webView.frame.size.height)];
        [self.toolbar setFrame:CGRectMake(self.toolbar.frame.origin.x, [self getStatusBarOffset], self.toolbar.frame.size.width, self.toolbar.frame.size.height)];
    }
}

#pragma mark UIWebViewDelegate

- (void)webViewDidStartLoad:(UIWebView*)theWebView
{
    // loading url, start spinner, update back/forward
    
    self.addressLabel.text = NSLocalizedString(@"Loading...", nil);
    self.backButton.enabled = theWebView.canGoBack;
    self.forwardButton.enabled = theWebView.canGoForward;
    
    [self.spinner startAnimating];
    
    return [self.navigationDelegate webViewDidStartLoad:theWebView];
}

- (BOOL)webView:(UIWebView*)theWebView shouldStartLoadWithRequest:(NSURLRequest*)request navigationType:(UIWebViewNavigationType)navigationType
{
    BOOL isTopLevelNavigation = [request.URL isEqual:[request mainDocumentURL]];
    
    if (isTopLevelNavigation) {
        self.currentURL = request.URL;
    }
    return [self.navigationDelegate webView:theWebView shouldStartLoadWithRequest:request navigationType:navigationType];
}

- (void)webViewDidFinishLoad:(UIWebView*)theWebView
{
    // update url, stop spinner, update back/forward
    
    self.addressLabel.text = [self.currentURL absoluteString];
    self.backButton.enabled = theWebView.canGoBack;
    self.forwardButton.enabled = theWebView.canGoForward;
    
    [self.spinner stopAnimating];
    [self.navigationDelegate webViewDidFinishLoad:theWebView];
}

- (void)webView:(UIWebView*)theWebView didFailLoadWithError:(NSError*)error
{
    // log fail message, stop spinner, update back/forward
    NSLog(@"webView:didFailLoadWithError - %ld: %@", (long)error.code, [error localizedDescription]);
    
    self.backButton.enabled = theWebView.canGoBack;
    self.forwardButton.enabled = theWebView.canGoForward;
    [self.spinner stopAnimating];
    
    self.addressLabel.text = NSLocalizedString(@"Load Error", nil);
    
    [self.navigationDelegate webView:theWebView didFailLoadWithError:error];
}


@end



