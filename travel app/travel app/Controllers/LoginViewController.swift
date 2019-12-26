//
//  LoginViewController.swift
//  travel app
//
//  Created by Zakaria on 26/12/19.
//  Copyright © 2019 Apple soft. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtEmail.setRightView(image: #imageLiteral(resourceName: "baseline_email_black_36pt"))
        txtPassword.setRightView(image: #imageLiteral(resourceName: "baseline_visibility_black_36pt"),isSecure: true)

        
    }
    

   

}
