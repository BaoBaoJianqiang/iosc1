//
//  AppDelegate.h
//  MyApp
//
//  Created by baojianqiang on 16/4/6.
//  Copyright © 2016年 baojianqiang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "APageViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UINavigationController *navController;

@property (strong, nonatomic) APageViewController *rootViewController;

@end

