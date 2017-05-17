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
    var resMap: Restaurant?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.resMapView.delegate = self
        //Convert restaurant address to coordinate and display in map
        CLGeocoder().geocodeAddressString(resMap!.address!, completionHandler: {
            (placeMark, error) in
            let resLocation = placeMark![0].location?.coordinate
            self.resMapView.addAnnotation(resAnnotation(name: self.resMap!.name!, address: self.resMap!.address!, coordinate: resLocation!))
            
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
    
    //It creates the song function to be controlled in another view controller
    @IBAction func playSong(_ sender: Any) {
        if MusicViewController.soundPlayer != nil{
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

}
