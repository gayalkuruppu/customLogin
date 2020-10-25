//
//  ViewController.swift
//  customLogin
//
//  Created by Gayal Kuruppu on 10/20/20.
//

import UIKit
import AVKit

class ViewController: UIViewController {
    
    var videoPlayer: AVPlayer?
    var videoPlayerLayer: AVPlayerLayer?

    @IBOutlet var signUpButton: UIButton!
    
    @IBOutlet var logInButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpElements()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // Set up video in the background
        // why do we use viewWillAppear instead of viewDidLoad? -> map example where we try to zoom but the map is not loaded yet->prob
        setUpVideo()
    }
    
    func setUpElements() {
        
        // adding styles for buttons
        Utilities.styleFilledButton(signUpButton)
        Utilities.styleHollowButtonWhite(logInButton)
    }
    
    func setUpVideo() {
        
        // get the path to the resource in bundle
        let bundlePath = Bundle.main.path(forResource: "login_bgn", ofType: "mp4")
        
        guard bundlePath != nil else {
            // bundlePath == nil -> return
            return
        }
        
        // create an url from it
        let url = URL(fileURLWithPath: bundlePath!)
        
        // create the video player item
        let item = AVPlayerItem(url: url)
        
        // create the player
        videoPlayer = AVPlayer(playerItem: item)
        
        // create the layer
        videoPlayerLayer = AVPlayerLayer(player: videoPlayer)
        
        // adjust the size and frame
        let screenSize: CGRect = UIScreen.main.bounds
        
        videoPlayerLayer?.frame = CGRect(x: 0, y: 0, width: screenSize.width, height: screenSize.height)
        // self.view.frame.size.width
        view.layer.insertSublayer(videoPlayerLayer!, at: 0)
        
        // add it to the view and play it
        videoPlayer?.playImmediately(atRate: 0.3)
        
    }
}

