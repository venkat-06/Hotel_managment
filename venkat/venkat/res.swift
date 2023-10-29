//
//  res.swift
//  venkat
//
//  Created by Hari Kiran Nagandla on 27/10/23.
//

import UIKit

class res: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func submit(_ sender: Any) {
        let alert = UIAlertController(title: "Thank You For Booking", message: "we will share the details over the mail  !!! ", preferredStyle:.alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
