//
//  CPageCell.h.m
//
//  Created by jianqiang
//  Copyright (c) 2013年 bao. All rights reserved.
//

#import "CPageCell.h"

@implementation CPageCell {
    UILabel* titleLabel;
}

- (void) awakeFromNib {
    [super awakeFromNib];
    [self createViews];
}

- (void) fillData: (NSString*)title
{
    titleLabel.text = title;
}

-(void) createViews {
    titleLabel = (UILabel*)[self.contentView viewWithTag:501];
}

@end
