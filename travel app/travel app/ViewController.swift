//
//  ViewController.swift
//  travel app
//
//  Created by Zakaria on 23/12/19.
//  Copyright © 2019 Apple soft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnSignIn: CustomButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btnSignIn.designButton()
        
//        btnSignIn.layer.cornerRadius = btnSignIn.frame.height / 2
//        btnSignIn.clipsToBounds = true
//        btnSignIn.layer.borderWidth = 1
//        btnSignIn.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        
    }

    @IBAction func onClickSignUp(_ sender: Any) {
        
    }
    
    @IBAction func onClickSignIn(_ sender: Any) {
    }
}

