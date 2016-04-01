//
//  CustomAlertView.h
//  Assignment2
//
//  Created by Trung Nguyen on 01/04/2016.
//  Copyright © 2016 Tech Kids. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface CustomAlertView : UIView <MyProtocol>


@property ViewController *control;
- (IBAction)btnMessage2:(id)sender;
- (IBAction)btnMessage1:(id)sender;

@end
