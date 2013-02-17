//
//  ViewController.m
//  NativeAppEmbedWebView
//
//  Created by Holly Schinsky on 11/6/12.
//  Copyright (c) 2012 Adobe. All rights reserved.
//

#import "ViewController.h"
#import <Cordova/CDVViewController.h>

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    CDVViewController* viewController = [CDVViewController new];
    viewController.view.frame = CGRectMake(0, 40, 320, 450);
    /*NSURL *urlOverwrite = [NSURL URLWithString:@"http://google.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:urlOverwrite];
    [viewController.webView loadRequest:request];*/

    [self.view addSubview:viewController.view];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (void)dealloc {
    [super dealloc];
}
@end
