//
//  UIView+VJInspectable.swift
//  VJSwiftCategory
//
//  Created by Victor on 10/29/15.
//  Copyright © 2015 Victor Jiang. All rights reserved.
//

import UIKit

extension UIView {
    
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable
    var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable
    var borderColor: UIColor? {
        get {
            guard let color = layer.borderColor else {
                return nil
            }
            return UIColor(CGColor: color)
        }
        set {
            layer.borderColor = newValue?.CGColor
        }
    }
}