//
//  final_bookingViewController.swift
//  venkat
//
//  Created by Hari Kiran Nagandla on 29/10/23.
//

import UIKit

class final_bookingViewController: UIViewController {

    var name=""
    var persons=0
    var address=""
    var idproof=""
    var checkin:Date?
    var checkout:Date?
    var ac=false
    var acc=""
    var amount=0
    
    @IBOutlet weak var lbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if ac == true{
            acc = "Ac is opted"
            amount = (persons)*1000+500
        }else{
            acc="Ac is not opted"
            amount = (persons)*1000
        }
        // Do any additional setup after loading the view.
        lbl.text = "Thanks for choosing NOVOTEL !! \n \n \n Here are your Booking Details : \n \n  ROOM TYPE : STANDARD \n \n Name: \(name) \n Number of persons: \(persons) \n Address:\(address) \n Idproof: \(idproof) \n In:  \(checkin!.formatted(date: .complete, time: .shortened)) \n To \n Out: \(checkout!.formatted(date: .complete, time: .shortened)) \n \(acc) \n \n \n Total Amount: ₹\(amount) \n \n You can pay the Amount via card/UPI/Cash at the Reception Counter at hotel "
    }
    
    
   

}

