//
//  Card.m
//  Matchismo
//
//  Created by Malcolm Macleod on 20/03/2013.
//  Copyright (c) 2013 Malcolm Macleod. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int) match:(NSArray *)otherCards {
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    return score;
}

@end
