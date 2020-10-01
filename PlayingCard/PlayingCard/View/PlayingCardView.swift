//
//  PlayingCardView.swift
//  PlayingCard
//
//  Created by Mukhtar Yusuf on 7/7/20.
//  Copyright © 2020 Mukhtar Yusuf. All rights reserved.
//

import UIKit

//@IBDesignable
class PlayingCardView: UIView {
//    @IBInspectable
    var rank: Int = 5 {
        didSet { setNeedsDisplay(); setNeedsLayout() }
    }
//    @IBInspectable
    var suit: String = "♥️" {
        didSet { setNeedsDisplay(); setNeedsLayout() }
    }
//    @IBInspectable
    var isFaceUp: Bool = true {
        didSet { setNeedsDisplay(); setNeedsLayout() }
    }
    var faceCardScale: CGFloat = SizeRatio.faceCardImageSizeToBoundsSize {
        didSet { setNeedsDisplay() }
    }
}
