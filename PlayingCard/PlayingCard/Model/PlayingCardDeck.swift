//
//  PlayingCardDeck.swift
//  PlayingCard
//
//  Created by Mukhtar Yusuf on 7/6/20.
//  Copyright © 2020 Mukhtar Yusuf. All rights reserved.
//

import Foundation

struct PlayingCardDeck {
    private(set) var cards = [PlayingCard]()
    
    init() {
        for suit in PlayingCard.Suit.all {
            for rank in PlayingCard.Rank.all {
                cards.append(PlayingCard(suit: suit, rank: rank))
            }
        }
    }
    
}
