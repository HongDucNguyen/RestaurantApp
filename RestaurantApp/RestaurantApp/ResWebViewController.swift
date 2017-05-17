//
//  ResWebViewController.swift
//  RestaurantApp
//
//  Created by Hong Duc Nguyen on 10/5/17.
//  Copyright © 2017 Hong Duc Nguyen. All rights reserved.
//

import UIKit
//NEW FUNCTION: Display website of the resraurant - it is embed in the app
class ResWebViewController: UIViewController, UIWebViewDelegate {
    
    var resWeb: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        webView.delegate = self
        if resWeb != ""{
            if let url = URL(string: resWeb!){
                let request = URLRequest(url: url)
                webView.loadRequest(request)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var webView: UIWebView!
 
    //It creates the song function to be controlled in another view controller
    @IBAction func playSong(_ sender: Any) {
        if MusicViewController.soundPlayer != nil{
            if MusicViewController.soundPlayer!.isPlaying {
                MusicViewController.eslapsedTime = MusicViewController.soundPlayer!.currentTime
                print("\(MusicViewController.eslapsedTime)")
                MusicViewController.soundPlayer!.pause()
            }else
            {
                MusicViewController.soundPlayer!.currentTime = MusicViewController.eslapsedTime
                MusicViewController.soundPlayer!.play()
            }
        }
    }   
}
