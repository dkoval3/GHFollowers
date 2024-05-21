//
//  GFBodyLabel.swift
//  GHFollowers
//
//  Created by Dane Koval on 5/20/24.
//

import UIKit

class GFBodyLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(textAlignment: NSTextAlignment) {
        super.init(frame: .zero)
        self.textAlignment = textAlignment
        configure()
    }
    
    func configure() {
        self.textColor = .secondaryLabel
        self.font = UIFont.preferredFont(forTextStyle: .body) // dynamic type
        self.adjustsFontSizeToFitWidth = true // Fit inside of label
        self.minimumScaleFactor = 0.75 // how much to scale
        self.lineBreakMode = .byWordWrapping // notice, we're not setting number of lines; saving for later; to be configured in VC
        self.translatesAutoresizingMaskIntoConstraints = false // use auto-constraints
    }
}
