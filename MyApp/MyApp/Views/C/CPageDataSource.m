//
//  APageViewController.m
//  MyApp
//
//  Created by jianqiang on 13-9-2.
//  Copyright (c) 2013年 Bao. All rights reserved.
//

#import "CPageDataSource.h"
#import "Navigator.h"
#import "CPageCell.h"

@interface CPageDataSource () {
    
}

@end

@implementation CPageDataSource

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"餐饮";
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  [self.dataArray count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"Cell";
    CPageCell *cell = [tableView dequeueReusableCellWithIdentifier: identifier];
    if(cell == nil) {
        NSArray* list = [[NSBundle mainBundle] loadNibNamed:@"CPageCell" owner:self options:nil];
        cell = (CPageCell*)[list lastObject];
    }
    
    NSString* title = [self.dataArray objectAtIndex:indexPath.row];
    [cell fillData: title];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* name = [self.dataArray objectAtIndex:indexPath.row];
    
    NSString* url = @"BPageViewController";
    NSMutableDictionary* data = [[NSMutableDictionary alloc] init];
    [data setValue: name forKey: @"UserName"];
    
    [Navigator navigateTo: url withData: data];
}


@end
