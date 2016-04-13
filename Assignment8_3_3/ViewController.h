//
//  ViewController.h
//  Assignment8_3_3
//
//  Created by Trung Nguyen on 13/04/2016.
//  Copyright © 2016 Tech Kids. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property int Value1;

@property (weak, nonatomic) IBOutlet UISlider *Slider;
- (IBAction)Slider:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *Value;

@end

