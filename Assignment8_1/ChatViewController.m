//
//  ChatViewController.m
//  Assignment8_1
//
//  Created by Trung Nguyen on 12/04/2016.
//  Copyright © 2016 Tech Kids. All rights reserved.
//

#import "ChatViewController.h"

@interface ChatViewController ()

@end

@implementation ChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    NSArray *arr = self.dictData[@"transcript"];
    return arr.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    //logic tinh so dong
    NSArray *arr = self.dictData[@"transcript"];
    NSDictionary *dictDisplay = arr[indexPath.row];
    
    UITableViewCell *cell;
    if (dictDisplay[@"alias"] == nil || [@"" isEqualToString:dictDisplay[@"alias"]]) {
        // chat cua ban
        cell = [tableView dequeueReusableCellWithIdentifier:@"CellRight"];
    } else {
        cell = [tableView dequeueReusableCellWithIdentifier:@"CellLeft"];
    }
    float height = [self updateCell:cell dict:dictDisplay];
    
    return height;//lbl.frame.size.height + 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    UITableViewCell *cell;
    NSArray *arr = self.dictData[@"transcript"];
    NSDictionary *dictDisplay = arr[indexPath.row];
    
    if (dictDisplay[@"alias"] == nil || [@"" isEqualToString:dictDisplay[@"alias"]]) {
        // chat cua ban
        cell = [tableView dequeueReusableCellWithIdentifier:@"CellRight" forIndexPath:indexPath];
    } else {
        cell = [tableView dequeueReusableCellWithIdentifier:@"CellLeft" forIndexPath:indexPath];
    }
    
    [self updateCell:cell dict:dictDisplay];
    
    
    return cell;
}

- (float) updateCell:(UITableViewCell *)cell dict:(NSDictionary *)dictDisplay
{
    UILabel *lbl = [cell.contentView viewWithTag:101];
    lbl.text = dictDisplay[@"message"];
    
    UILabel *lbl2 = [cell.contentView viewWithTag:102];
    lbl2.text = dictDisplay[@"message"];
    
    [lbl sizeToFit];
    [lbl2 sizeToFit];
    
    
    lbl2.frame = CGRectMake(lbl2.frame.origin.x,
                            lbl.frame.origin.y + lbl.frame.size.height + 10,
                            lbl2.frame.size.width,
                            lbl2.frame.size.height);
    
    if ([@"CellRight" isEqualToString:cell.reuseIdentifier]) {
        lbl.frame = CGRectMake(self.tableView.frame.size.width - lbl.frame.size.width - 10,
                               lbl.frame.origin.y,
                               lbl.frame.size.width,
                               lbl.frame.size.height);
        
        lbl2.frame = CGRectMake(self.tableView.frame.size.width - lbl2.frame.size.width - 10,
                                lbl2.frame.origin.y,
                                lbl2.frame.size.width,
                                lbl2.frame.size.height);
    }
    
    
    return lbl2.frame.size.height + lbl2.frame.origin.y + 10;
}


@end
