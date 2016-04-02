//
//  Game.h
//  Practice1
//
//  Created by Trung Nguyen on 02/04/2016.
//  Copyright © 2016 Tech Kids. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface Game : NSObject

@property Player *whilePlayer;
@property Player *backPlayer;
@property NSMutableArray *arrWhileChess;
@property NSMutableArray *arrblackChess;

-(void) checkKill;

-(instancetype) init;

@end
