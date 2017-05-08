//
//  ResDetailsViewController.swift
//  RestaurantApp
//
//  Created by Hong Duc Nguyen on 8/5/17.
//  Copyright © 2017 Hong Duc Nguyen. All rights reserved.
//

import UIKit

class ResDetailsViewController: UIViewController{

    var rDetails: Restau?
    
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
    @IBAction func webAccess(_ sender: Any) {
        let url = URL(string: rDetails!.website)!
        if UIApplication.shared.canOpenURL(url){
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
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
