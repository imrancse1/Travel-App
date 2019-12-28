//
//  HomeViewController.swift
//  travel app
//
//  Created by Imran Hossain on 12/26/19.
//  Copyright © 2019 Apple soft. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func onClickPlane(_ sender: Any) {
        
        guard let ticketController = storyboard?.instantiateViewController(withIdentifier: "TicketViewController") as? TicketViewController else {
            fatalError("Unable to create TicketViewController")
        }
        navigationController?.pushViewController(ticketController, animated: true)
    }
    
    @IBAction func onClickTrain(_ sender: Any) {
        
    }
    
    @IBAction func onClickCar(_ sender: Any) {
        
    }
}
