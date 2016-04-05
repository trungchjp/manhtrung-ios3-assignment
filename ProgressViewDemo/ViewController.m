//
//  ViewController.m
//  ProgressViewDemo
//
//  Created by Trung Nguyen on 04/04/2016.
//  Copyright © 2016 Tech Kids. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {

    UIProgressView *progressView = [[UIProgressView alloc] init];
    progressView.frame = CGRectMake(100,100,100,20);
    [progressView setProgressTintColor:[UIColor redColor]];
    [progressView setUserInteractionEnabled:NO];
    progressView.progress=0.5f;
    [progressView setProgressViewStyle:UIProgressViewStyleBar];
    [progressView setTrackTintColor:[UIColor blueColor]];
    [self.view addSubview:progressView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
