//
//  Tree.h
//  1
//
//  Created by Trung Nguyen on 3/27/16.
//  Copyright © 2016 Tech Kids. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tree : NSObject

@property int leaf_num;
@property NSString * name;
@property NSString*nameMutable;
- (void) drop;

@end
