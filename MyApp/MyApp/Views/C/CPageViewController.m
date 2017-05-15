//
//  CPageViewController.m
//  MyApp
//
//  Created by jianqiang on 13-9-2.
//  Copyright (c) 2013年 Bao. All rights reserved.
//

#import "CPageViewController.h"
#import "Navigator.h"
#import "CPageDataSource.h"

@interface CPageViewController () {
    UITableView *dataTable;
    CPageDataSource* dataSource;
}

@end

@implementation CPageViewController

- (void)initVariables {

}

- (void)initViews {
    //1.从xib中获取View
    NSArray* list = [[NSBundle mainBundle] loadNibNamed: @"CPageView" owner: self options: nil];
    self.view = list.lastObject;

    dataTable = (UITableView*)[self.view viewWithTag: 500];
    
    dataSource = [[CPageDataSource alloc] init];
    dataSource.dataArray = [[NSMutableArray alloc] initWithObjects:@"川办", @"海底捞", @"8号苑", nil];
    dataTable.dataSource = dataSource;
    dataTable.delegate = dataSource;
    [dataTable reloadData];
}

- (void)loadData {

}

@end
