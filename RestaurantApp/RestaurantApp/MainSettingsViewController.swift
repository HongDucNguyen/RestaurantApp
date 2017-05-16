//
//  MainSettingsViewController.swift
//  RestaurantApp
//
//  Created by Hong Duc Nguyen on 16/5/17.
//  Copyright © 2017 Hong Duc Nguyen. All rights reserved.
//

import UIKit

class MainSettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unWindSegue(segue: UIStoryboardSegue){
        
    }
    
    //It creates the song function to be controlled in another view controller
    @IBAction func playSong(_ sender: Any) {
        
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
