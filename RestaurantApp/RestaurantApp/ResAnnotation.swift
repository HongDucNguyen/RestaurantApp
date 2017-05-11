//
//  ResAnnotation.swift
//  RestaurantApp
//
//  Created by Hong Duc Nguyen on 10/5/17.
//  Copyright © 2017 Hong Duc Nguyen. All rights reserved.
//

import Foundation
import MapKit

//Create a class for MapKit Annotation
class resAnnotation: NSObject, MKAnnotation{
    var title: String?
    var coordinate: CLLocationCoordinate2D
    var subtitle: String?
    init(name: String, address: String, coordinate: CLLocationCoordinate2D) {
        self.title = name
        self.subtitle = address
        self.coordinate = coordinate
    }
}
