//
//  RZViewController.m
//  HelloWorld
//
//  Created by Harvey on 14-7-16.
//  Copyright (c) 2014年 iwise. All rights reserved.
//

#import "RZViewController.h"

@interface RZViewController ()

@end

@implementation RZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.58.com"]]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
