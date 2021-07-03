
//
//  ViewController.m
//  appWebView
//
//  Created by Felipe Hernandez on 27/02/21.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *url = @"http://www.google.com";
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];
    
    [_webView loadRequest:request];
    
    [_indicatorProgress setHidden:YES];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)irWeb:(id)sender {
    NSString *url = [_txtURL stringValue];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];
    
    [_webView loadRequest:request];
    
    _webView.navigationDelegate =  self;
}


//Delegate WebKit
- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation{
    [_indicatorProgress setHidden:NO];
    [_indicatorProgress startAnimation:self];
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation{
    [_indicatorProgress setHidden:YES];
    [_indicatorProgress stopAnimation:self];
    
}
@end
