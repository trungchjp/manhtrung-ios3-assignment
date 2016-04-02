//
//  Piece.h
//  Practice1
//
//  Created by Trung Nguyen on 02/04/2016.
//  Copyright © 2016 Tech Kids. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum playerStateTypes
{
    CHESS_TYPE_KING = 0,
    CHESS_TYPE_QUEEN = 1,
    CHESS_TYPE_BISHOP = 2,
    CHESS_TYPE_KNIGHT = 3,
    CHESS_TYPE_PAWN = 4,
    CHESS_TYPE_ROOK = 5,
    
} CHESS_TYPE;

@interface Piece : NSObject

@property int x;
@property int y;

@property Boolean color;



-(BOOL) isMoveValid:(NSMutableArray *)arrChess;

@end
