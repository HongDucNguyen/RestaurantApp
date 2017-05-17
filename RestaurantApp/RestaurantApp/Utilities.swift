//
//  Utilities.swift
//  RestaurantApp
//
//  Created by Hong Duc Nguyen on 7/5/17.
//  Copyright © 2017 Hong Duc Nguyen. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class Utility{
    static var Restaurants: [Restaurant] = []
    class func loadInfo(){
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        do{
            let req: NSFetchRequest<Restaurant> = Restaurant.fetchRequest()
            Restaurants = try context.fetch(req)
        }catch let error { print(error) }
            
            if Restaurants.count == 0{
                var res = Restaurant(context: context)
                res.name = "Embla"
                res.tel = "0396545923"
                res.address = "122 Russell Street, Melbourne, 3000, Victoria, Australia"
                res.open = "Mon-Fri noon-midnight, Sat and Sun 4pm-1am"
                res.rating = 5
                res.website = "https://embla.com.au"
                res.info = "We are a wine bar in the middle of town.  Our tastes in wine may be slightly weird, but we think there are others out there like us.  Come and join us, it's a small but friendly place"
                res.image = "embla"
                Restaurants.append(res)
                
                res = Restaurant(context: context)
                res.name = "Attica"
                res.tel = "0395300111"
                res.address = "74 Glen Eira Road,Ripponlea, 3185, Victoria, Australia"
                res.open = "Tue-Sat 6.30pm-late"
                res.rating = 5
                res.website = "http://www.attica.com.au/#!home"
                res.info = "Attica will be familiar, if not by experience, then by name. The unassuming eatery on a sleepy suburban shopping strip has become, over the course of the 11 years since a young Ben Shewry arrived at its door, a source of pride to Victoria and indeed Australia, as we bask in its celebration on the world stage."
                res.image = "attica"
                Restaurants.append(res)
                
                res = Restaurant(context: context)
                res.name = "Brae"
                res.tel = "0352362226"
                res.address = "4285 Cape Otway Rd, Birregurra, 3242, Victoria, Australia"
                res.open = "Lunnch Fri-Mon noon-4pm; Dinner Thu-Sun  6.30pm-late"
                res.rating = 5
                res.website = "https://braerestaurant.com/"
                res.info = "Set on a hillside on a 30 acre organic farm, Brae is a contemporary restaurant with six luxury guest suites ñ a place to interact with nature and eat from the land."
                res.image = "brae"
                Restaurants.append(res)
                
                res = Restaurant(context: context)
                res.name = "Ides"
                res.tel = "0399399542"
                res.address = "92 Smith Street, Collingwood, 3066, Victoria, Australia"
                res.open = "Wed-Sun 6pm-late"
                res.rating = 5
                res.website = "https://www.idesmelbourne.com.au/"
                res.info = "From sold-out pop-up to permanent digs, Peter Gunnís Collingwood restaurant has landed fully formed."
                res.image = "ides"
                Restaurants.append(res)
                
                res = Restaurant(context: context)
                res.name = "ESP (Estelle by Scott Pickett)"
                res.tel = "0394894609"
                res.address = "245 High St, Northcote, 3070, Victoria, Australia"
                res.open = "Tue-Sat 6pm-late"
                res.rating = 5
                res.website = "https://www.estellebysp.com/"
                res.info = "Estelle by Scott Pickett (ESP) is located at 245 High Street next door to Estelle Bistro. The concept of the venue is a high end dining experience delivered in a bespoke setting designed by Scott himself with international architects Hirsch Bedner Associates."
                res.image = "esp"
                Restaurants.append(res)
                
                res = Restaurant(context: context)
                res.name = "Tipo 00"
                res.tel = "0399423946"
                res.address = "361 Little Bourke Street, Melbourne, 3000, Victoria, Australia"
                res.open = "Mon 11.30am-03.00pm, Tue-Sat 11.30am-10.00pm"
                res.rating = 4
                res.website = "https://www.tipo00.com.au"
                res.info = "Tipo 00 – a name to reference the flour used in what we specialize in ‘pasta’. A restaurant to showcase our passion for Italian food, pasta and beverage."
                res.image = "tipo00"
                Restaurants.append(res)
                
                res = Restaurant(context: context)
                res.name = "Nora"
                res.tel = "0390418644"
                res.address = "156 Elgin St, Carlton, 3053, Victoria, Australia"
                res.open = "Tue-Thu 8.30am-3.30pm; Sat, Sun 9am-4pm"
                res.rating = 4
                res.website = "http://noramelbourne.com/"
                res.info = "NORA is about Thai cuisine, its history and its future. We aim to present a dining experience that is equally familiar, curious and thought provoking. If we can achieve a balance between history, ingredient, imagination, creativity and taste then we have gone some way to honouring what we love about our cuisine and culture."
                res.image = "nora"
                Restaurants.append(res)
                
                res = Restaurant(context: context)
                res.name = "Lume"
                res.tel = "0396900142"
                res.address = "226 Coventry Street, South Melbourne, 3205, Victoria, Australia"
                res.open = "Thu-Sat 6pm-late; Sun noon-3pm; Mon 6pm-late"
                res.rating = 4
                res.website = "http://www.restaurantlume.com/"
                res.info = "In 2015, a terrace house in South Melbourne that was formerly home to a burlesque club was overtaken by Shaun Quade and Mr Harry. They set about creating a venue with the bones and soul of a restaurant but with a theatrical and multisensory approach."
                res.image = "lume"
                Restaurants.append(res)
                
                res = Restaurant(context: context)
                res.name = "Dinner by Heston"
                res.tel = "0392925777"
                res.address = "Level 3, Crown Casino, 8 Whiteman St, Southbank, 3006, Victoria, Australia"
                res.open = "Fri, Sun noon-2pm; daily 5.30-11pm"
                res.rating = 5
                res.website = "http://www.dinnerbyheston.com.au./"
                res.info = "The restaurant interior has been conceived as a subtle, elegant portrait ñ contemporary and innovative, yet mindful of tradition. The dining room features floor-to-ceiling glass walls, giving diners a view of the kitchen and its unique pulley system. Modelled after a version used by the royal court, the pulleys rotate the spit on an open-fire."
                res.image = "dinnerbyheston"
                Restaurants.append(res)
                
                res = Restaurant(context: context)
                res.name = "Minamishima"
                res.tel = "0394295180"
                res.address = "4 Lord St, Richmond, 3121, Victoria, Australia"
                res.open = "Tue-Sat 6-10pm"
                res.rating = 5
                res.website = "http://minamishima.com.au/"
                res.info = "At the heart of the omakase offering from sushi master Koichi Minamishima lies not only 25 years of experience, but also an increasingly rare culinary art form."
                res.image = "minamishima"
                Restaurants.append(res)

            }
        
    }
}

