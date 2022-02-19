//
//  ViewController.h
//  WebViewTest
//
//  Created by Gevorg Hovhannisyan on 8/20/21.
//  Copyright © 2021 Gevorg Hovhannisyan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView* webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView* indicator;
@property (weak, nonatomic) IBOutlet UIBarButtonItem* backButtonItem;
@property (weak, nonatomic) IBOutlet UIBarButtonItem* forwardButtonItem;
@property (weak, nonatomic) IBOutlet UIBarButtonItem* refreshButtonItem;


- (IBAction)actionback:(id)sender;
- (IBAction)actionForward:(id)sender;
- (IBAction)actionRefresh:(id)sender;


@end

