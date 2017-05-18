//
//  AboutUsViewController.swift
//  RestaurantApp
//
//  Created by DUC NGUYEN on 18/05/2017.
//  Copyright © 2017 Hong Duc Nguyen. All rights reserved.
//

import UIKit

class AboutUsViewController: ViewController {

    
    @IBOutlet weak var para1: UILabel!
    @IBOutlet weak var para2: UILabel!
    @IBOutlet weak var para3: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        para1.sizeToFit()
        para2.sizeToFit()
        para3.sizeToFit()
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
