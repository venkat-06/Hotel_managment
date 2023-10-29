//
//  excecutivepremierViewController.swift
//  venkat
//
//  Created by Hari Kiran Nagandla on 27/10/23.
//

import UIKit

class excecutivepremierViewController: UIViewController {

    @IBOutlet weak var checkout: UIDatePicker!
    @IBOutlet weak var chekin: UIDatePicker!
    @IBOutlet weak var add: UITextField!
    
    @IBOutlet weak var slidervalue: UISlider!
    
    @IBOutlet weak var slider_value: UILabel!
    
    
    @IBAction func slider(_ sender: Any) {
        slider_value.text = "\(Int(slidervalue.value))"
    }
    @IBOutlet weak var name: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    @IBAction func book(_ sender: UIButton) {
        if chekin.date.formatted() >= checkout.date.formatted(){
            let alert = UIAlertController(title: "Warning", message: "Please choose appropriate date ", preferredStyle:.alert)
            alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }else{
            performSegue(withIdentifier: "finalep", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let obj = segue.destination as! EPfinalViewController
        obj.name = name.text!
        obj.persons = Int(slidervalue.value)
        obj.address = add.text!
        
        obj.checkin = chekin.date
        obj.checkout = checkout.date
        
    
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
