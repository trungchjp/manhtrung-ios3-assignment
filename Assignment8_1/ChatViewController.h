//
//  ChatViewController.h
//  Assignment8_1
//
//  Created by Trung Nguyen on 12/04/2016.
//  Copyright © 2016 Tech Kids. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChatViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property NSDictionary *dictData;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
