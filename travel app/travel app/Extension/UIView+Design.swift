//
//  UIView+Design.swift
//  travel app
//
//  Created by Zakaria on 25/12/19.
//  Copyright © 2019 Apple soft. All rights reserved.
//

import UIKit

class CustomView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setRadiusAndShadow()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setRadiusAndShadow()
    }
    
    func setRadiusAndShadow() {
        layer.cornerRadius = 5
        clipsToBounds = true
        layer.masksToBounds = false
        layer.shadowRadius = 5
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 3, height: 0)
        layer.shadowColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        
    }
}

extension UIView {
    func designView(borderWidth: CGFloat = 1, borderColor: UIColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)){
        layer.cornerRadius = frame.height / 2
        clipsToBounds = true
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor.cgColor
    }
    
    
}
