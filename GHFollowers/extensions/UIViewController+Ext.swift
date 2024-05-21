//
//  UIViewController+Ext.swift
//  GHFollowers
//
//  Created by Dane Koval on 5/20/24.
//

import UIKit

extension UIViewController {
    func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        // quick and easy way to pass something to main thread
        // What is a GCD (closure)?
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen // shows full scren instead of default card screen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
}
