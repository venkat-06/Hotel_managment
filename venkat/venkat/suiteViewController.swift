//
//  suiteViewController.swift
//  venkat
//
//  Created by Hari Kiran Nagandla on 27/10/23.
//

import UIKit

class suiteViewController: UIViewController {
    
    @IBOutlet weak var add: UITextField!
    @IBAction func slider(_ sender: Any) {
        slider_value.text = "\(Int(slidervalue.value))"
    }
    @IBOutlet weak var chekin: UIDatePicker!
    @IBOutlet weak var checkout: UIDatePicker!
    @IBOutlet weak var slider_value: UILabel!
    @IBOutlet weak var slidervalue: UISlider!
    @IBOutlet weak var name: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func book(_ sender: UIButton) {if chekin.date.formatted() >= checkout.date.formatted(){
        let alert = UIAlertController(title: "Warning", message: "Please choose appropriate date ", preferredStyle:.alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }else{
        performSegue(withIdentifier: "finalsuite", sender: self)
    }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let obj = segue.destination as! suitefinalViewController
        obj.name = name.text!
        obj.persons = Int(slidervalue.value)
        obj.address = add.text!
        
        obj.checkin = chekin.date
        obj.checkout = checkout.date
        
    }
}
