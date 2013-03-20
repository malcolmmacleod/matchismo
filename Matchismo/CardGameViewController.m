//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Malcolm Macleod on 20/03/2013.
//  Copyright (c) 2013 Malcolm Macleod. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) PlayingCardDeck *deck;
@property (weak, nonatomic) IBOutlet UIButton *cardButton;
@end

@implementation CardGameViewController

- (PlayingCardDeck *) deck {
    if (!_deck) _deck = [[PlayingCardDeck alloc] init];
    return _deck;
}

- (void) setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"Flips updated to %d", self.flipCount);
}

- (IBAction)flipCard:(UIButton *)sender {
    
    sender.selected = !sender.selected;
    
    if (sender.selected) {
        Card *card = [self.deck drawRandomCard];
        
        [sender setTitle:card.contents forState:UIControlStateSelected];
    }

    self.flipCount ++;
}

@end
