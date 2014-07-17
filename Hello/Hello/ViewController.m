//
//  ViewController.m
//  Hello
//
//  Created by Harvey on 14-7-16.
//  Copyright (c) 2014年 iwise. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    webView =[[UIWebView alloc]initWithFrame:CGRectMake(0, 20, 320, 480)];
    webView.scalesPageToFit = YES;
    [webView setDelegate:self];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.so.com"]];
    [self.view addSubview:webView];
    [webView loadRequest:request];
}

-(void)webViewDidStartLoad:(UIWebView *)webView
{
    NSLog(@"开始加载");
    UIActivityIndicatorView *activity = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    activity.frame =CGRectMake(0, 0, 32.0f, 32.0f);
    activity.tag=100;
    activity.center = self.view.center;
    [self.view addSubview:activity];
    [activity startAnimating];
}
-(void)webViewDidFinishLoad:(UIWebView *)webView
{
    //通过全局变量来获取控件
    UIActivityIndicatorView * activity=(UIActivityIndicatorView *)[self.view viewWithTag:100];
    [activity stopAnimating];
    NSLog(@"加载完成");
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
