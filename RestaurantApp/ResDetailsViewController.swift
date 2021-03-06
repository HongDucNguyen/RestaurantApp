//
//  ResDetailsViewController.swift
//  RestaurantApp
//
//  Created by Hong Duc Nguyen on 8/5/17.
//  Copyright © 2017 Hong Duc Nguyen. All rights reserved.
//

import UIKit

class ResDetailsViewController: UIViewController{
    //Declare a variable to receive data from previous view
    var rDetails: Restaurant?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var detailsName: UILabel!
    @IBOutlet weak var detailsHours: UILabel!
    @IBOutlet weak var detailsTel: UILabel!
    @IBOutlet weak var detailsWeb: UILabel!
    @IBOutlet weak var detailsAdd: UILabel!
    
    //Oveeride function to display infomation
    override func viewWillAppear(_ animated: Bool) {
        if rDetails != nil{
            detailsName.text = rDetails!.name
            detailsHours.text = rDetails!.open
            detailsTel.text = rDetails!.tel
            detailsWeb.text = rDetails!.website
            detailsAdd.text = rDetails!.address
            detailsHours.sizeToFit()
            detailsWeb.sizeToFit()
            detailsAdd.sizeToFit()
        }
    }
    //Override function to prepare for segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueResWeb"{
            (segue.destination as! ResWebViewController).resWeb = rDetails!.website
        }
        if segue.identifier == "segueResMap"{
            (segue.destination as! ResMapViewController).resMap = rDetails
        }
    }
    //Create function to unwind segue
    @IBAction func unWindSegue(segue: UIStoryboardSegue){
    }
    @IBAction func makeCall(_ sender: Any) {
        guard let url = URL(string: "telprompt://\(rDetails!.tel!)" ) else { return }
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            // Fallback on earlier versions
            UIApplication.shared.openURL(url)
        }
    }
    
    //It creates the song function to be controlled in another view controller
    @IBAction func playSong(_ sender: Any) {
        Utility.musicPlayPause()
    }




}
