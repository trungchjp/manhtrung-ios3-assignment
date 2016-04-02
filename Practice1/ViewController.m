//
//  ViewController.m
//  Practice1
//
//  Created by Trung Nguyen on 02/04/2016.
//  Copyright © 2016 Tech Kids. All rights reserved.
//

#import "ViewController.h"
#import "Piece.h"
#import "King.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    King *king1 = [[King alloc] init];
    [king1 isMoveValid];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
