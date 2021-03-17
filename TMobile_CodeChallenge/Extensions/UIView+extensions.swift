//
//  UIView+extensions.swift
//  TMobile_CodeChallenge
//
//  Created by MKenny on 3/17/21.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView ...) {
        views.forEach {
            self.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
    }
}
