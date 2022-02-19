//
//  ViewController.m
//  WebViewTest
//
//  Created by Gevorg Hovhannisyan on 8/20/21.
//  Copyright © 2021 Gevorg Hovhannisyan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSString* urlString = @"https://www.list.am";
    NSURL* url = [NSURL URLWithString:urlString];
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
    
}

- (void) didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

#pragma mark - Action

- (IBAction)actionback:(id)sender {
    
    if ([self.webView canGoBack]) {
        
        [self.webView stopLoading];
        [self.webView goBack];

    }
}

- (IBAction)actionForward:(id)sender {
    
    if ([self.webView canGoForward]) {
        
        [self.webView stopLoading];
        [self.webView goForward];
    }
}

- (IBAction)actionRefresh:(id)sender {
            
        [self.webView stopLoading];
        [self.webView reload];
}


- (void) refreshButtons {
    
    self.backButtonItem.enabled = [self.webView canGoBack];
    self.forwardButtonItem.enabled = [self.webView canGoForward];

}


#pragma mark - UIWebViewDelegate

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    
    NSLog(@"shouldStartLoadWithRequest %@", [request debugDescription]);
    
    return  YES;
    
}

- (void)webViewDidStartLoad:(UIWebView *)webView {
    
    NSLog(@"webViewDidStartLoad");
    [self.indicator startAnimating];
    
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    
    NSLog(@"webViewDidFinishLoad");
    [self.indicator stopAnimating];
    
    [self refreshButtons];

}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    
    NSLog(@"didFailLoadWithError");
    [self.indicator stopAnimating];
    
    [self refreshButtons];
    
}


@end
