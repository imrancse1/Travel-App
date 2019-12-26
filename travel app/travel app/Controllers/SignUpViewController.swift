//
//  SignUpViewController.swift
//  travel app
//
//  Created by Zakaria on 25/12/19.
//  Copyright © 2019 Apple soft. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var btnFacebook: UIButton!
    @IBOutlet weak var txtFullName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnFacebook.designButton(borderWidth: 0, borderColor: UIColor.clear)
        txtFullName.setRightView(image:#imageLiteral(resourceName: "baseline_perm_identity_black_36pt"))
         txtEmail.setRightView(image:#imageLiteral(resourceName: "baseline_email_black_36pt"))
         txtPassword.setRightView(image:#imageLiteral(resourceName: "baseline_visibility_black_36pt"),isSecure: true)
        
    }
    

    

}
