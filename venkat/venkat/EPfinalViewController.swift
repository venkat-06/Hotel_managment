//
//  EPfinalViewController.swift
//  venkat
//
//  Created by Hari Kiran Nagandla on 29/10/23.
//

import UIKit

class EPfinalViewController: UIViewController {
    var name=""
    var persons=0
    var address=""
    var checkin:Date?
    var checkout:Date?
    
    var amount=0
    
    @IBOutlet weak var lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        amount = (persons)*2500
        
        // Do any additional setup after loading the view.
        
        
        lbl.text = "Thanks for choosing NOVOTEL !! \n \n \n Here are your Booking Details : \n \n  ROOM TYPE : EXECUTIVE PREMIER \n \n Name: \(name) \n Number of persons: \(persons) \n Address:\(address) \n In:  \(checkin!.formatted(date: .complete, time: .shortened)) \n To \n Out: \(checkout!.formatted(date: .complete, time: .shortened)) n \n \n Total Amount: ₹\(amount) \n \n You can pay the Amount via card/UPI/Cash at the Reception Counter at hotel "
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
    }
}
