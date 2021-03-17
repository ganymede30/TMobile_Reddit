//
//  NSLayoutDimension+constrain.swift
//  TMobile_CodeChallenge
//
//  Created by MKenny on 3/17/21.
//

import UIKit

extension NSLayoutDimension {
    
    @discardableResult
    func constrain(_ relation: NSLayoutConstraint.Relation = .equal,
                   to anchor: NSLayoutDimension,
                   with constant: CGFloat = 0.0,
                   multiplyBy multiplier: CGFloat = 1.0,
                   isActive: Bool = true) -> NSLayoutConstraint {
        
        let constraint: NSLayoutConstraint = self.constraint(equalTo: anchor, multiplier: multiplier, constant: constant)
        constraint.isActive = isActive
        
        return constraint
    }
    
    @discardableResult
    func constrain(_ relation: NSLayoutConstraint.Relation = .equal,
                   to constant: CGFloat = 0.0,
                   isActive: Bool = true) -> NSLayoutConstraint {
        
        let constraint: NSLayoutConstraint = self.constraint(equalToConstant: constant)
        constraint.isActive = isActive
        
        return constraint
    }
    
}
