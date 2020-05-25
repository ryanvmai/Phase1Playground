//
//  DesignableButton.swift
//  Phase1Playground
//
//  Created by Ryan Mai on 5/25/20.
//  Copyright © 2020 Ryan Mai. All rights reserved.
//

//https://www.youtube.com/watch?v=yI-EY6MP9So

import Foundation
import UIKit

@IBDesignable class DesignableButton: UIButton {
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
}
