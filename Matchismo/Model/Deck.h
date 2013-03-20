//
//  Deck.h
//  Matchismo
//
//  Created by Malcolm Macleod on 20/03/2013.
//  Copyright (c) 2013 Malcolm Macleod. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void) addCard:(Card *) card atTop:(BOOL) atTop;

- (Card *) drawRandomCard;


@end
