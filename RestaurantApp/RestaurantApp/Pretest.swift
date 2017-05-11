//
//  Pretest.swift
//  RestaurantApp
//
//  Created by Hong Duc Nguyen on 7/5/17.
//  Copyright © 2017 Hong Duc Nguyen. All rights reserved.
//

import Foundation
import UIKit

class Restau{
    var name: String
    var address: String
    var tel: String
    var website: String
    var open: String
    var rating: Int
    var info: String
    init(name: String, tel: String, address: String, open: String, rating: Int, website: String, info: String){
        self.name = name
        self.address = address
        self.tel = tel
        self.website = website
        self.open = open
        self.rating = rating
        self.info = info
    }
}
class Utility{
    static var Restaurants: [Restau] = []
    static func loadInfo(){
        Restaurants = [
            Restau(name: "Embla", tel: "0396545923", address: "122 Russell Street, Melbourne, 3000, Australia",
                   open: "Mon-Fri noon-midnight, Sat and Sun 4pm-1am", rating: 5, website: "https://embla.com.au", info: "We are a wine bar in the middle of town.  Our tastes in wine may be slightly weird, but we think there are others out there like us.  Come and join us, it's a small but friendly place"),
            Restau(name: "Tipo 00", tel: "0399423946", address: "361 Little Bourke Street, Melbourne, 3000, Australia",
                   open: "Mon 11.30am-03.00pm, Tue-Sat 11.30am-10.00pm", rating: 4, website: "https://www.tipo00.com.au", info: "Tipo 00 – a name to reference the flour used in what we specialize in ‘pasta’. A restaurant to showcase our passion for Italian food, pasta and beverage.")
        ]
    }
}

