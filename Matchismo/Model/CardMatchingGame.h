//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Malcolm Macleod on 23/03/2013.
//  Copyright (c) 2013 Malcolm Macleod. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject

- (id) initWithCardCount:(NSUInteger) cardCount usingDeck:(Deck*) deck;

- (void) flipCardAtIndex:(NSUInteger) index;

- (Card *) cardAtIndex:(NSUInteger) index;

@property (nonatomic, readonly) int score;

@end
