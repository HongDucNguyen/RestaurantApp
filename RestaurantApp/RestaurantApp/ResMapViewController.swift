//
//  ResMapViewController.swift
//  RestaurantApp
//
//  Created by Hong Duc Nguyen on 10/5/17.
//  Copyright © 2017 Hong Duc Nguyen. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

//Create a class for viewing restaurant location
class ResMapViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var resMapView: MKMapView!
    //Declare variable ro receive object from previous view
    var resMap: Restau?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.resMapView.delegate = self
        //Convert restaurant address to coordinate and display in map
        CLGeocoder().geocodeAddressString(resMap!.address, completionHandler: {
            (placeMark, error) in
            let resLocation = placeMark![0].location?.coordinate
            self.resMapView.addAnnotation(resAnnotation(name: self.resMap!.name, address: self.resMap!.address, coordinate: resLocation!))
            
            //Set zoom-in map with the restaurant address in the middle of the map
            let span = MKCoordinateSpanMake(0.01, 0.01)
            let region = MKCoordinateRegion(center: resLocation!, span: span)
            self.resMapView.setRegion(region, animated: true)
        })
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
