//
//  Navigator.h
//  ElongClient
//
//  Created by Jianqiang on 13-11-15.
//  Copyright (c) 2013年. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SynthesizeSingleton.h"
#import <UIKit/UIKit.h>

@interface Navigator : NSObject {
    UINavigationController *_nav;
}

@property (nonatomic, retain) UINavigationController *nav;

+ (Navigator *)sharedNavigator;

+ (void)navigateTo:(NSString *)viewController;

+ (void)navigateTo:(NSString *)viewController withData:(NSMutableDictionary *)param;

@end
