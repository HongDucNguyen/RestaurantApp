//
//  ShareSocialViewController.swift
//  RestaurantApp
//
//  Created by JONATHAN OSWALDO RUIZ on 17/05/2017.
//  Copyright © 2017 Hong Duc Nguyen. All rights reserved.
//

import UIKit

class ShareSocialViewController: UIViewController {
    
    //notification for music player to play/pause
    
    let notification = NotificationCenter.default
    let notification2 = NotificationCenter.default
    let notification3 = NotificationCenter.default
    
    //Button function that takes the user to Instagram main site
    @IBAction func GotoInstagram(_ sender: Any) {
        
        let instagramHooks = "instagram://user?username=johndoe"
        let instagramUrl = NSURL(string: instagramHooks)
        if UIApplication.shared.canOpenURL(instagramUrl! as URL)
        {
            UIApplication.shared.openURL(instagramUrl! as URL)
            
        } else {
            //redirect to safari because the user doesn't have Instagram
            UIApplication.shared.openURL(NSURL(string: "http://instagram.com/")! as URL)
        }

    }

    //Button function that takes the user to Facebook main site
    @IBAction func GoToFacebook(_ sender: Any) {
        
        let facebookHooks = "facebook://user?username=johndoe"
        let facebookUrl = NSURL(string: facebookHooks)
        if UIApplication.shared.canOpenURL(facebookUrl! as URL)
        {
            UIApplication.shared.openURL(facebookUrl! as URL)
            
        } else {
            //redirect to safari because the user doesn't have Instagram
            UIApplication.shared.openURL(NSURL(string: "http://facebook.com/")! as URL)
        }

    }

    //Button function that takes the user to Twitter main site
    @IBAction func GoToTwitter(_ sender: Any) {
        
        let twitterHooks = "twitter://user?username=johndoe"
        let twitterUrl = NSURL(string: twitterHooks)
        if UIApplication.shared.canOpenURL(twitterUrl! as URL)
        {
            UIApplication.shared.openURL(twitterUrl! as URL)
            
        } else {
            //redirect to safari because the user doesn't have Instagram
            UIApplication.shared.openURL(NSURL(string: "http://twitter.com/")! as URL)
        }
        

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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
