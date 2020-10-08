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
    private var cornerString: NSAttributedString {
        return centeredAttributedString(rankString + "\n" + suit, fontSize: cornerFontSize)
    }
    private lazy var upperLeftCornerLabel = createCornerLabel()
    private lazy var lowerRightCornerLabel = createCornerLabel()
    
    @objc func adjustFaceCardScale(byHandlingGestureRecognizedBy recognizer: UIPinchGestureRecognizer) {
        switch recognizer.state {
        case .changed, .ended:
            faceCardScale *= recognizer.scale
            recognizer.scale = 1.0
        default:
            break
        }
    }
    
    private func createCornerLabel() -> UILabel {
        let label = UILabel()
        label.numberOfLines = 0
        addSubview(label)
        
        return label
    }
    
    private func centeredAttributedString(_ string: String, fontSize: CGFloat) -> NSAttributedString {
        var font = UIFont.preferredFont(forTextStyle: .body).withSize(fontSize)
        font = UIFontMetrics(forTextStyle: .body).scaledFont(for: font)
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        
        return NSAttributedString(string: string,
                                  attributes: [NSAttributedString.Key.paragraphStyle : paragraphStyle,
                                               .font : font
        ])
    }
    
    private func configureCornerLabel(_ label: UILabel) {
        label.attributedText = cornerString
        label.frame.size = CGSize.zero
        label.sizeToFit()
        label.isHidden = !isFaceUp
    }
    
}
