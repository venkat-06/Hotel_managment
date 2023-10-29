//
//  ViewController.swift
//  venkat
//
//  Created by venkat sai 12016184  on 26/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    var imgs:[UIImage]=[UIImage(named: "bg")!,UIImage(named: "bg4")!,UIImage(named: "bg2")!,UIImage(named: "bg3")!]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        username.placeholder = "UserName"
        password.placeholder = "Password"
        img.image = UIImage(named: "novotellogo")
        
        
        
        image.image = UIImage(named: "bg")
        image.animationImages = imgs
        image.animationDuration = 10
        image.animationRepeatCount = 0
        image.startAnimating()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var username: UITextField!
    
    
    @IBAction func submit(_ sender: UIButton) {
        if let usernameText = username.text, let passwordText = password.text {
            if usernameText == "venkat" && passwordText == "1234" {
                performSegue(withIdentifier: "home", sender: self)
            }
            else {
                let alert = UIAlertController(title: "Invalid", message: "Invalid Credentials Please Enter the correct Details", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert,animated: true, completion: nil)
            }
        }
    }
    
    @IBOutlet weak var password: UITextField!
}

