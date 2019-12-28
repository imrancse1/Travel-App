//
//  TicketViewController.swift
//  travel app
//
//  Created by Imran Hossain on 12/26/19.
//  Copyright © 2019 Apple soft. All rights reserved.
//

import UIKit

class TicketViewController: UIViewController {

    @IBOutlet weak var btnRound: UIButton!
    @IBOutlet weak var btnOnWay: UIButton!
    
    @IBOutlet weak var btnMulti: UIButton!
    
    @IBOutlet weak var backView: UIView!
    
    @IBOutlet weak var fromTxt: UITextField!
    @IBOutlet weak var toTxt: UITextField!
    @IBOutlet weak var departureDateTxt: UITextField!
    @IBOutlet weak var returnDateTxt: UITextField!
    @IBOutlet weak var numberOfPessenger: UITextField!
    @IBOutlet weak var flightClass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btnRound.designButton(borderWidth: 0, borderColor: .clear)
        btnOnWay.designButton(borderWidth: 0, borderColor: .clear)
        btnMulti.designButton(borderWidth: 0, borderColor: .clear)
        backView.designView(borderWidth: 0.5, borderColor: #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1))
        
        fromTxt.setLeftView(image: #imageLiteral(resourceName: "location"))
        toTxt.setLeftView(image: #imageLiteral(resourceName: "location"))
        departureDateTxt.setLeftView(image: #imageLiteral(resourceName: "tours-selected"))
        returnDateTxt.setLeftView(image: #imageLiteral(resourceName: "tours"))
        numberOfPessenger.setLeftView(image: #imageLiteral(resourceName: "user"))
        flightClass.setLeftView(image: #imageLiteral(resourceName: "flight"))
        
        
        
    }
    
    @IBAction func onClickRound(_ sender: Any) {
        changeButtonColor(roundColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1),  roundTexColor: .white)
    }
    
    @IBAction func onClickOnWay(_ sender: Any) {
         changeButtonColor(onWayColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1),  onWayTexColor: .white)
    }
    
    @IBAction func onClickMulti(_ sender: Any) {
         changeButtonColor(multiColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1),  multiTexColor: .white)
    }

    func changeButtonColor(roundColor: UIColor = .white, onWayColor: UIColor = .white, multiColor: UIColor = .white, roundTexColor: UIColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), onWayTexColor: UIColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), multiTexColor: UIColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)){
        btnRound.backgroundColor = roundColor
        btnOnWay.backgroundColor = onWayColor
        btnMulti.backgroundColor = multiColor
        
        btnRound.setTitleColor(roundTexColor, for: .normal)
        btnOnWay.setTitleColor(onWayTexColor, for: .normal)
        btnMulti.setTitleColor(multiTexColor, for: .normal)
    }
    
    
    @IBAction func onClickRoundNextPage(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "TravelPriceViewController") as? TravelPriceViewController else {
                   fatalError("Unable to create TicketViewController")
               }
               self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func onClickSearchFlight(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "FlightResultViewController") as? FlightResultViewController else {
            fatalError("Unable to create TicketViewController")
        }
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
}
