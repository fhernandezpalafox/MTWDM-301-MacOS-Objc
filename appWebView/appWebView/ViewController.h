//
//  ViewController.h
//  appWebView
//
//  Created by Felipe Hernandez on 27/02/21.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface ViewController : NSViewController<WKNavigationDelegate>
@property (strong) IBOutlet WKWebView *webView;
@property (strong) IBOutlet NSTextField *txtURL;
@property (strong) IBOutlet NSProgressIndicator *indicatorProgress;

- (IBAction)irWeb:(id)sender;

@end

