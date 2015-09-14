//
//  ViewController.m
//  labeiChannel
//
//  Created by zypsusu on 15/9/14.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "ViewController.h"
#import "MyNewsNavItem.h"
#import "MyNewsNavItems.h"
#import "JWNewsChannelView.h"

@interface ViewController () <JWNewsChannelViewDelegate>

@end

@implementation ViewController
- (IBAction)btnClick:(id)sender {
    /**
     *  从单例中获取新闻头数据，然后构建新闻分类头编辑View，并对其赋值
     */
    MyNewsNavItems *newsNavItem = [MyNewsNavItems shareMyNewsNavItems];
    JWNewsChannelView *newsChannelView = [[JWNewsChannelView alloc]initWithArray:newsNavItem.newsNavItems delegate:self];
    newsChannelView.tag = 3357003;
    [newsChannelView showInView:self.view];
    [self.view bringSubviewToFront:newsChannelView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
