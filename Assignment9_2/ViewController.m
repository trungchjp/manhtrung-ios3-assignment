//
//  ViewController.m
//  Assignment9_2
//
//  Created by Trung Nguyen on 14/04/2016.
//  Copyright © 2016 Tech Kids. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property double rotation;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)knightClick:(id)sender {
    [UIView animateWithDuration:1.0f delay:0.0f usingSpringWithDamping:0.5f initialSpringVelocity:0.0f options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.knight.center = CGPointMake(140, 150);
    } completion:^(BOOL finished){
        
    }];

}

- (IBAction)returnClick:(id)sender {
    [UIView animateWithDuration:1.0f delay:0.0f usingSpringWithDamping:0.5f initialSpringVelocity:0.0f options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.knight.center = CGPointMake(60, 300);
    } completion:^(BOOL finished){
        
    }];
}

@end
