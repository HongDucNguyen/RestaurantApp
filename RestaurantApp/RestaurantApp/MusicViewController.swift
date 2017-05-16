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
    
    var soundPlayer: AVAudioPlayer?
    var eslapsedTime: TimeInterval = 0
    var songs = ["something","viva","sign"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func playSong(_ sender: UIButton) {
        let path = Bundle.main.path(forResource:songs[sender.tag], ofType: "mp3")
        let url = URL(fileURLWithPath: path!)
        do{
            try soundPlayer = AVAudioPlayer(contentsOf: url)
        }catch {print("file not available")}
        
        soundPlayer?.play()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
