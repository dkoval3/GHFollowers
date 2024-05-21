//
//  GFTitleLabel.swift
//  GHFollowers
//
//  Created by Dane Koval on 5/20/24.
//

import UIKit

class GFTitleLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(textAlignment: NSTextAlignment, fontSize: CGFloat) {
        super.init(frame: .zero)
        self.textAlignment = textAlignment
        self.font = UIFont.systemFont(ofSize: fontSize, weight: .bold) // Not doing preferredFontType because not using dynamic type for this
        configure()
    }
    
    func configure() {
        self.textColor = .label // black on white screen, white on dark screen
        self.adjustsFontSizeToFitWidth = true // Fit inside of label
        self.minimumScaleFactor = 0.9 // how much to scale
        self.lineBreakMode = .byTruncatingTail // ... at the end if username too long
        self.translatesAutoresizingMaskIntoConstraints = false // use auto-constraints
    }
}
