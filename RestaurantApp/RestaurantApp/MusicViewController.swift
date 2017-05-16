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
    
    static var soundPlayer: AVAudioPlayer?
    static var eslapsedTime: TimeInterval = 0
    var songs = ["something","viva","sign"]
    var currentIndex = 4

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        /*if currentIndex != 4{
            let path = Bundle.main.path(forResource:songs[currentIndex], ofType: "mp3")
            let url = URL(fileURLWithPath: path!)
            do{
                try MusicViewController.soundPlayer = AVAudioPlayer(contentsOf: url)
            }catch {print("file not available")}
            
        }*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func playSong(_ sender: UIButton) {
        if currentIndex != sender.tag{
            let path = Bundle.main.path(forResource:songs[sender.tag], ofType: "mp3")
            let url = URL(fileURLWithPath: path!)
            do{
                try MusicViewController.soundPlayer = AVAudioPlayer(contentsOf: url)
            }catch {print("file not available")}
            currentIndex = sender.tag
            MusicViewController.soundPlayer!.play()
        }else
        {
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
