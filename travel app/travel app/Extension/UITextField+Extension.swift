//
//  UITextField+Extension.swift
//  travel app
//
//  Created by Zakaria on 25/12/19.
//  Copyright © 2019 Apple soft. All rights reserved.
//

import UIKit

extension UITextField {
    func setRightView(image: UIImage, isSecure: Bool = false){
        let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 30, height: 30))
        imageView.image = image
        
        if isSecure {
            let button =  UIButton(frame: imageView.frame)
            button.setImage(#imageLiteral(resourceName: "baseline_visibility_off_black_36pt"), for: .normal)
            button.setImage(#imageLiteral(resourceName: "baseline_visibility_black_36pt"), for: .selected)
            button.isSelected = true
            button.addTarget(self, action: #selector(onClickEye), for: .touchUpInside)
            rightView = button
        }else{
        rightView = imageView
        }
        rightViewMode = .always
    }
    
    func setLeftView(image: UIImage){
        let imageView = UIImageView(frame: CGRect(x: 10, y: 0, width: 20, height: 15))
        
         //leftView.frame = CGRect(x: 20, y: 0, width: 30, height: 20)
                       //imageView.frame = CGRect(x: 13, y: 0, width: 15, height: 20)
                      // TextField.leftViewMode = .always
        
        imageView.image = image
        let location =  UIButton(frame: imageView.frame)
        location.setImage(#imageLiteral(resourceName: "location"), for: .normal)
        leftView = location
        
        leftView = imageView
        leftViewMode = .always
    }
    
    
    @objc func onClickEye(sender: UIButton){
        self.isSecureTextEntry = !self.isSecureTextEntry
        sender.isSelected = !sender.isSelected
    }
}

