//
//  CustomAlertView.m
//  Assignment2
//
//  Created by Trung Nguyen on 01/04/2016.
//  Copyright © 2016 Tech Kids. All rights reserved.
//

#import "CustomAlertView.h"

@implementation CustomAlertView


- (instancetype)init
{
    self = [super init];
    if (self) {
        UINib *nib = [UINib nibWithNibName:@"View" bundle:nil];
        self = [[nib instantiateWithOwner:self options:nil] objectAtIndex:0];
        self.control = [[ViewController alloc]init];
        _control.instance = self;
    }
    return self;
}

- (IBAction)btnMessage2:(id)sender {
    _control.msg = @" 2 ";
    [self showMessage:_control.msg];
    [self removeFromSuperview];
}

- (IBAction)btnMessage1:(id)sender {
    _control.instance = self;
    _control.msg = @" 1 ";
    [self showMessage:_control.msg];
    [self removeFromSuperview];
}

-(void)showMessage:(NSString *)msg;{
    NSLog(@"%@",msg);
}

@end
