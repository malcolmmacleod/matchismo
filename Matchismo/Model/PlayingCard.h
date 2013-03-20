//
//  PlayingCard.h
//  Matchismo
//
//  Created by Malcolm Macleod on 20/03/2013.
//  Copyright (c) 2013 Malcolm Macleod. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *) validSuits;
+ (NSUInteger) maxRank;

@end
