//
//  ViewController.m
//  Assignment2
//
//  Created by Trung Nguyen on 01/04/2016.
//  Copyright © 2016 Tech Kids. All rights reserved.
//

#import "ViewController.h"
#import "CustomAlertView.h"

@interface ViewController ()

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

- (IBAction)btnShowMessage:(id)sender {
    //    UINib *nib = [UINib nibWithNibName:@"View" bundle:nil];
    //    CustomVIew *view = [[nib instantiateWithOwner:self options:nil] objectAtIndex:0];
    CustomAlertView *view = [[CustomAlertView alloc]init];
    [self.view addSubview:view];

}
@end
