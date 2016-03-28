//
//  Chess.h
//  1
//
//  Created by Trung Nguyen on 28/03/2016.
//  Copyright © 2016 Tech Kids. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Chess : NSObject

@property int x;
@property int y;

-(void) move;
-(void) eat;

@end
