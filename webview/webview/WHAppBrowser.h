
#import "WHWebViewDelegate.h"

@class WHAppBrowserViewController;

@interface WHAppBrowser

@property (nonatomic, retain) WHAppBrowserViewController* appBrowserViewController;

- (void)open:(NSURL*)url;
- (void)navigateTo:(NSURL*)url;

@end


@interface WHAppBrowserViewController : UIViewController <UIWebViewDelegate>{
@private
    
    WHWebViewDelegate* _webViewDelegate;
}

@property (nonatomic, strong) IBOutlet UIWebView* webView;
@property (nonatomic) NSURL* currentURL;

- (void)navigateTo:(NSURL*)url;
- (void)open:(NSURL*)url;

@end


