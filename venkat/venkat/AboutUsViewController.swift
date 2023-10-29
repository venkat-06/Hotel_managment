//
//  AboutUsViewController.swift
//  venkat
//
//  Created by Hari Kiran Nagandla on 27/10/23.
//

import UIKit
import AVKit
import AVFoundation

class AboutUsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var path:NSURL!
    var videoplayer:AVPlayer!
    var videocontroller : AVPlayerViewController!
    
    @IBAction func video(_ sender: Any) {
        path = NSURL(fileURLWithPath: Bundle.main.path(forResource: "hotel", ofType: "mp4")!)
        videoplayer = AVPlayer(url: path as URL)
        videocontroller = AVPlayerViewController();
        videocontroller.player = videoplayer
        self.present(videocontroller,animated: true)
        self.videocontroller.player?.play()
        
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
