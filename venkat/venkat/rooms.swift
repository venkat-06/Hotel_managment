//
//  rooms.swift
//  venkat
//
//  Created by Hari Kiran Nagandla on 27/10/23.
//

import UIKit

class rooms: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func std(_ sender: UIButton) {
        performSegue(withIdentifier: "std", sender: nil)
    }
    
    @IBAction func ep(_ sender: UIButton) {
        performSegue(withIdentifier: "ep", sender: nil)
    }
   
    @IBAction func suites(_ sender: Any) {
        performSegue(withIdentifier: "suite", sender: nil)
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
