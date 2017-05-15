//
//  BPageViewController.m
//  MyApp
//
//  Created by jianqiang on 13-9-2.
//  Copyright (c) 2013年 Bao. All rights reserved.
//

#import "BPageViewController.h"

@interface BPageViewController () {
    UILabel* nameLabel;
    UIButton* clickmeButton;
}

@end

@implementation BPageViewController

@synthesize userName;

- (void)initVariables {
    userName = [self.param objectForKey: @"UserName"];
}

- (void)initViews {
    //1.从xib中获取View
    NSArray* list = [[NSBundle mainBundle] loadNibNamed: @"BPageView" owner: self options: nil];
    self.view = list.lastObject;
    
    nameLabel = (UILabel*)[self.view viewWithTag: 100];
    nameLabel.text = userName;
    
    clickmeButton = (UIButton*)[self.view viewWithTag: 500];
    [clickmeButton addTarget: self action: @selector(doSomething) forControlEvents:UIControlEventTouchUpInside];
}

- (void)loadData {
    //调用MobileAPI，发起网络请求，获取页面初始化数据
}

- (void) doSomething {
    //do something
}

@end
