//
//  UIButton+Design.swift
//  travel app
//
//  Created by Zakaria on 23/12/19.
//  Copyright © 2019 Apple soft. All rights reserved.
//

import UIKit

extension UIButton {
    func designButton(borderWidth: CGFloat = 1, borderColor: UIColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)){
        layer.cornerRadius = frame.height / 2
        clipsToBounds = true
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor.cgColor
    }
    
    
}


