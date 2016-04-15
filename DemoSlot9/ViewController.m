//
//  ViewController.m
//  DemoSlot9
//
//  Created by Trung Nguyen on 13/04/2016.
//  Copyright © 2016 Tech Kids. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property double rotation;
@property BOOL btnStart1Touched;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _btnStart1Touched = NO;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)stop:(id)sender {
    //[self animate1.finished];
    
//    if (_btnStart1Touched) {
//        [self animate];
//    }
    
    [self animate];
}
-(void) animate{
    [self.imgView.layer removeAllAnimations];
    [UIView animateWithDuration: 1.0 animations:^{
        self.imgView.alpha = 1.0;
        self.imgView.center = self.view.center;
        //self.imgView.transform = CGAffineTransformMakeRotation(self.rotation += M_PI);
    }completion:^(BOOL finished){
        [self animate];
    }];
    
    
}
- (IBAction)start1:(id)sender {
    
//    if (_btnStart1Touched) {
//        _btnStart1Touched = NO;
//    } else {
//        _btnStart1Touched = YES;
//    }
    
    [self animate1];
    }

-(void) animate1{
    [UIView animateWithDuration: 1.0 animations:^{
        self.imgView.alpha = 1.0;
        self.imgView.center = self.view.center;
        self.imgView.transform = CGAffineTransformMakeRotation(self.rotation += M_PI);
    }completion:^(BOOL finished){
        [self animate1];
    }];

}
- (IBAction)start2:(id)sender {
    [self animate2];
}
-(void) animate2{
    [UIView animateWithDuration: 2.0 animations:^{
        self.imgView.alpha = 1.0;
        self.imgView.center = self.view.center;
        self.imgView.transform = CGAffineTransformMakeRotation(self.rotation += M_PI);
    }completion:^(BOOL finished){
        [self animate2];
    }];
    
}
- (IBAction)start3:(id)sender {
    [self animate3];
}
-(void) animate3{
    [UIView animateWithDuration: 3.0 animations:^{
        self.imgView.alpha = 1.0;
        self.imgView.center = self.view.center;
        self.imgView.transform = CGAffineTransformMakeRotation(self.rotation += M_PI);
    }completion:^(BOOL finished){
        [self animate3];
    }];
    
}

- (IBAction)animation:(id)sender {
    [UIView animateWithDuration:1.0f delay:0.0f usingSpringWithDamping:0.5f initialSpringVelocity:0.0f options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.animation.center = CGPointMake(self.view.center.x, 568);
    } completion:^(BOOL finished){
        
    }];
}



@end
