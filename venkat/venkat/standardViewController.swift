//
//  standardViewController.swift
//  venkat
//
//  Created by Hari Kiran Nagandla on 27/10/23.
//

import UIKit

class standardViewController: UIViewController {

    @IBOutlet weak var slider_vlaue: UISlider!
    
    @IBOutlet weak var slider_value: UILabel!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var add: UITextField!
    @IBOutlet weak var id: UITextField!
    @IBOutlet weak var checkin: UIDatePicker!
    @IBOutlet weak var checkout: UIDatePicker!
    @IBOutlet weak var ad: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func slider(_ sender: Any) {
        slider_value.text = "\(Int(slider_vlaue.value))"
    }
    
    
    @IBAction func book(_ sender: UIButton) {
        
        if checkin.date.formatted() >= checkout.date.formatted(){
            let alert = UIAlertController(title: "Warning", message: "Please choose appropriate date ", preferredStyle:.alert)
            alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }else{
            performSegue(withIdentifier: "stdroom", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var obj = segue.destination as! final_bookingViewController
        obj.name = name.text!
        obj.persons = Int(slider_vlaue.value)
        obj.address = add.text!
        obj.idproof = id.text!
        obj.checkin = checkin.date
        obj.checkout = checkout.date
        obj.ac = ad.isOn
    }

}
