//
//  ResWebViewController.swift
//  RestaurantApp
//
//  Created by Hong Duc Nguyen on 10/5/17.
//  Copyright © 2017 Hong Duc Nguyen. All rights reserved.
//

import UIKit
//NEW FUNCTION: Display website of the resraurant - it is embed in the app
class ResWebViewController: UIViewController, UIWebViewDelegate {
    
    var resWeb: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        webView.delegate = self
        if resWeb != ""{
            if let url = URL(string: resWeb!){
                let request = URLRequest(url: url)
                webView.loadRequest(request)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var webView: UIWebView!
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
