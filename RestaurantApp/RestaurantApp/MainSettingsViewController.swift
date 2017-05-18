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
        Utility.musicPlayPause()        
    }


}
