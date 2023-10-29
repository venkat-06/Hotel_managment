//
//  HomePage.swift
//  venkat
//
//  Created by venkat sai 12016184  on 26/10/23.
//

import UIKit


class HomePage: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource{
    var images: [String] = ["pic5","pic4","pic3","pic2","pic1"]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) 
        as! MyCollectionCellCollectionViewCell
        
        cell.pic1.image = UIImage(named: images[indexPath.row])
        cell.pic1.layer.cornerRadius = 50.0
        return cell
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
        
    @IBAction func menu(_ sender: Any) {
    
    let alert = UIAlertController(title: "Welcome to NOVOTEL!!", message: "how can we help you !!", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "AboutUs", style: .default, handler:{(ACTION:UIAlertAction) -> Void in self.performSegue(withIdentifier: "AboutUs", sender: self)
        }))
        alert.addAction(UIAlertAction(title: "Reporting", style: .default, handler:{(ACTION:UIAlertAction) -> Void in self.performSegue(withIdentifier: "report", sender: self)
        }))
        alert.addAction(UIAlertAction(title: "Help/ContactUs", style: .default, handler:{(ACTION:UIAlertAction) -> Void in self.performSegue(withIdentifier: "help", sender: self)
        }))
        alert.addAction(UIAlertAction(title: "Feedback", style: .default, handler:{(ACTION:UIAlertAction) -> Void in self.performSegue(withIdentifier: "feedback", sender: self)
        }))
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true,completion: nil)
    }
    
    

    @IBAction func meet(_ sender: UIButton) {
        performSegue(withIdentifier: "meet", sender: self)
    }
    @IBAction func res(_ sender: UIButton) {
        performSegue(withIdentifier: "res", sender: self)
    }
    @IBAction func app(_ sender: UIButton) {
        performSegue(withIdentifier: "s1", sender: self)
    }

}
    
    /*
    // MARK: - Navigation

     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


