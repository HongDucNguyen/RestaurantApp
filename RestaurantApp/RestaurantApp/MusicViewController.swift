//
//  MusicViewController.swift
//  RestaurantApp
//
//  Created by Hong Duc Nguyen on 16/5/17.
//  Copyright © 2017 Hong Duc Nguyen. All rights reserved.
//

import UIKit
import AVFoundation

class MusicViewController: UIViewController {
    
    //to make the music player reachable and accesible for public
    //static var soundPlayer: AVAudioPlayer?
    //static var eslapsedTime: TimeInterval = 0
    //var songs = ["something","viva","sign"]
    var currentIndex = -1

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
   
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //It creates the song function to be controlled in another view controller
    @IBAction func playSong(_ sender: UIButton) {
        if currentIndex != sender.tag{
            let path = Bundle.main.path(forResource:Utility.songs[sender.tag], ofType: "mp3")
            let url = URL(fileURLWithPath: path!)
            do{
                try Utility.soundPlayer = AVAudioPlayer(contentsOf: url)
            }catch {print("file not available")}
            currentIndex = sender.tag
            Utility.soundPlayer!.play()
        }else
        {
            Utility.musicPlayPause()
        }
    }
    @IBAction func unWindSegue(segue: UIStoryboardSegue){
        
    }
    

}
