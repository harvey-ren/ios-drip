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
    //创建一个UIWebView对象
    webView =[[UIWebView alloc]initWithFrame:CGRectMake(0, 20, 320, 480)];
    webView.scalesPageToFit = YES;
    //设置代理
    [webView setDelegate:self];
    //创建NSURLRequest对象
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.so.com"]];
    //添加控件
    [self.view addSubview:webView];
    //加载
    [webView loadRequest:request];
}

-(void)webViewDidStartLoad:(UIWebView *)webView
{
    NSLog(@"开始加载");
    //创建风火轮对象
    activityIndicatorView= [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    activityIndicatorView.frame =CGRectMake(0, 0, 32.0f, 32.0f);
    //设置位置
    activityIndicatorView.center = self.view.center;
    [self.view addSubview:activityIndicatorView];
    //开始动画
    [activityIndicatorView startAnimating];
}
-(void)webViewDidFinishLoad:(UIWebView *)webView
{
    //可以通过全局变量来获取控件
    //结束动画
    [activityIndicatorView stopAnimating];
    NSLog(@"加载完成");
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
