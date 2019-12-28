//
//  UIViewController+Extension.swift
//  travel app
//
//  Created by Imran Hossain on 12/26/19.
//  Copyright © 2019 Apple soft. All rights reserved.
//

import UIKit

//extension UIViewController {
//    func changeRoot(){
//    let vc = storyboard?.instantiateViewController(withIdentifier: "TabBarViewController") as? TabBarViewController
//        let appDelegate = UIApplication.shared.delegate as? AppDelegate
//        appDelegate?.window?.rootViewController = vc
//        appDelegate?.window?.makeKeyAndVisible()
//
//    }
//}

extension UIViewController {
    func rootChange(){
        let test = storyboard?.instantiateViewController(withIdentifier: "TabBarViewController") as? TabBarViewController
        let app = UIApplication.shared.delegate as? AppDelegate
        app?.window?.rootViewController = test
        app?.window?.makeKeyAndVisible()
    }
}


