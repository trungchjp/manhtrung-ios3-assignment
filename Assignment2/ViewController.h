//
//  ViewController.h
//  Assignment2
//
//  Created by Trung Nguyen on 01/04/2016.
//  Copyright © 2016 Tech Kids. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MyProtocol <NSObject>

-(void)showMessage:(NSString *)msg;

@end

@interface ViewController : UIViewController

@property NSString *msg;
@property id<MyProtocol>instance;
- (IBAction)btnShowMessage:(id)sender;


@end

