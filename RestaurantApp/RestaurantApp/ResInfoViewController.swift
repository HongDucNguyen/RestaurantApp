//
//  ResInfoViewController.swift
//  RestaurantApp
//
//  Created by Hong Duc Nguyen on 7/5/17.
//  Copyright © 2017 Hong Duc Nguyen. All rights reserved.
//

import UIKit


class ResInfoViewController: UIViewController {

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
    
    override func viewWillAppear(_ animated: Bool) {
        if r != nil{
            infoName.text = r!.name
            infoImage.image = UIImage(named: r!.name)
            infoLabel.text = r!.open
            infoLabel.sizeToFit()
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueResDetails"{
            (segue.destination as! ResDetailsViewController).rDetails = r
        }
    }
    
    @IBAction func unWindSegue(segue: UIStoryboardSegue){
        //self.reloadData()
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
