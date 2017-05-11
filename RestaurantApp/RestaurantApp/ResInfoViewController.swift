//
//  ResInfoViewController.swift
//  RestaurantApp
//
//  Created by Hong Duc Nguyen on 7/5/17.
//  Copyright © 2017 Hong Duc Nguyen. All rights reserved.
//

import UIKit


class ResInfoViewController: UIViewController {
    //Delcare a variable to recive data from previous view
    var r: Restau?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet var infoImage: UIImageView!
    @IBOutlet weak var infoName: UILabel!
    
    //Function to show infomation in this view
    override func viewWillAppear(_ animated: Bool) {
        if r != nil{
            infoName.text = r!.name
            infoImage.image = UIImage(named: r!.name)
            infoLabel.text = r!.info
            infoLabel.sizeToFit()
            infoName.sizeToFit()
        }
    }
    //Prepare for segue - pass data from this view to the next view
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueResDetails"{
            (segue.destination as! ResDetailsViewController).rDetails = r
        }
    }
    //Create func to unwind segue
    @IBAction func unWindSegue(segue: UIStoryboardSegue){
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
