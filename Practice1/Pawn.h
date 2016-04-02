//
//  Pawn.h
//  Practice1
//
//  Created by Trung Nguyen on 02/04/2016.
//  Copyright © 2016 Tech Kids. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Piece.h"

@interface Pawn : Piece

@property CHESS_TYPE type;

-(BOOL) isMoveValid;

@end
