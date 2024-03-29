//
//  PlayingCard.m
//  Matchismo
//
//  Created by Malcolm Macleod on 20/03/2013.
//  Copyright (c) 2013 Malcolm Macleod. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit = _suit;

- (NSString *) contents {
    return [[PlayingCard rankStrings][self.rank] stringByAppendingString:self.suit];
}

+ (NSArray *) validSuits {
    static NSArray *validSuits = nil;
    if (!validSuits) validSuits = @[@"♠", @"♣", @"♥", @"♦"];
    return validSuits;
}

- (void) setSuit:(NSString *)suit {
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *) suit {
    return _suit ? _suit : @"?";
}

+ (NSArray *) rankStrings {
    static NSArray *rankStrings = nil;
    
    if (!rankStrings) rankStrings = @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
    return rankStrings;
}

+ (NSUInteger) maxRank {
    return [self rankStrings].count - 1;
}

- (void) setRank:(NSUInteger)rank {
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

@end
