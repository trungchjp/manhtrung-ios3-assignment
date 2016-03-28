//
//  ViewController.m
//  1
//
//  Created by Trung Nguyen on 3/27/16.
//  Copyright © 2016 Tech Kids. All rights reserved.
//

#import "ViewController.h"
#import "Flower.h"
#import "Tree.h"
#import "Vua.h"
#import "Xe.h"
#import "Tot.h"
#import "Alert.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.lbl.text = @"Hello World";
    
    
    Flower *flower1 = [[Flower alloc] init];
    [flower1 smell];
    
    NSString *name = @"A";
    flower1.name = @"A";
    flower1.name = @"AB";
    
    Vua *vua = [[Vua alloc] init];
    vua.x = 3;
    vua.y = 6;
    [vua move];
    [vua eat];
    
    Xe *xe = [[Xe alloc] init];
    xe.x = 1;
    xe.y = 2;
    [xe move];
    [xe eat];
    
    Tot *tot = [[Tot alloc] init];
    tot.x = 4;
    tot.y = 2;
    [tot move];
    [tot eat];
    
    Alert *alert = [[Alert alloc] init];
    [alert x];
    
    
    
    
    
//    flower1.nameMutable = [NSMutableString alloc] initWithString:(@"xxx");
//    flower1.nameMutableString
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
