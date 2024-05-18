//
//  GFTextField.swift
//  GHFollowers
//
//  Created by Dane Koval on 5/18/24.
//

import UIKit

class GFTextField: UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 10
        layer.borderWidth = 2
        layer.borderColor = UIColor.systemGray4.cgColor
        
        textColor = .label // black in light mode, white in dark mode
        tintColor = .label // blinking cursor color
        textAlignment = .center
        font = UIFont.preferredFont(forTextStyle: .title2) // dynamic type
        adjustsFontSizeToFitWidth = true // adjusts font if large name to fit field
        minimumFontSize = 12 // shrink, but not too much
        
        backgroundColor = .tertiarySystemBackground // see documentation for color
        autocorrectionType = .no
        
        placeholder = "Enter a username"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
