//
//  meeting.swift
//  venkat
//
//  Created by venkat sai 12016184 on 27/10/23.
//

import UIKit

class meeting: UIViewController {
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var date: UIDatePicker!
    @IBOutlet weak var np: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func book(_ sender: Any) {
        let alert = UIAlertController(title: "Thank You For Booking", message: "we will share the details over the mail!!! ", preferredStyle:.alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
        
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
