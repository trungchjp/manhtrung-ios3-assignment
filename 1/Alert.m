//
//  Alert.m
//  1
//
//  Created by Trung Nguyen on 28/03/2016.
//  Copyright © 2016 Tech Kids. All rights reserved.
//

#import "Alert.h"

@implementation Alert

- (void)x;
{
    NSLog(@"Alert x...");
    [NSTimer scheduledTimerWithTimeInterval:5.0
                                     target:self
                                   selector:@selector(targetMethod)
                                   userInfo:nil
                                    repeats:NO];

}
- (void)targetMethod;
{
    NSLog(@"Bat duoc roi");
}
@end
