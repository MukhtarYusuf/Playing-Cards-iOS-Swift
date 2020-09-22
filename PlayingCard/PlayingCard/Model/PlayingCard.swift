//
//  PlayingCard.swift
//  PlayingCard
//
//  Created by Mukhtar Yusuf on 7/6/20.
//  Copyright © 2020 Mukhtar Yusuf. All rights reserved.
//

import Foundation

struct PlayingCard: CustomStringConvertible {
    var suit: Suit
    var rank: Rank
    var description: String {
        return "Rank: \(rank), Suit: \(suit)"
    }
    
    enum Suit: String, CustomStringConvertible {
        case spades = "♠️"
        case hearts = "♥️"
        case diamonds = "♦️"
        case clubs = "♣️"
        
        static var all = [Suit.spades, .hearts, .diamonds, .clubs]
        var description: String { return self.rawValue }
    }
    
}
