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
    
}
