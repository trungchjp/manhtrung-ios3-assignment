//
//  ViewController.m
//  Assignment8_1
//
//  Created by Trung Nguyen on 12/04/2016.
//  Copyright © 2016 Tech Kids. All rights reserved.
//

#import "ViewController.h"
#import "ChatViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString* path = [[NSBundle mainBundle] pathForResource:@"Data_1" ofType:@""];
    NSString* content = [NSString stringWithContentsOfFile:path
                                                  encoding:NSUTF8StringEncoding
                                                     error:NULL];
    
    NSError *jsonError;
    NSData *objectData = [content dataUsingEncoding:NSUTF8StringEncoding];
    self.jsonArr = [NSJSONSerialization JSONObjectWithData:objectData
                                                   options:NSJSONReadingMutableContainers
                                                     error:&jsonError];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return self.jsonArr.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    UILabel *lblHello = [cell.contentView viewWithTag:101];
    NSDictionary *dictData = [self.jsonArr objectAtIndex:indexPath.row];/// self.jsonArr[indexPath.row]
    lblHello.text = dictData[@"description"];
    
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    NSDictionary *dictData = self.jsonArr[indexPath.row];
    
    ////////// chuyen view
    ChatViewController *vcChat = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"ChatViewController"];
    vcChat.dictData = dictData;
    
    
    [self.navigationController pushViewController:vcChat animated:YES];
}
@end
