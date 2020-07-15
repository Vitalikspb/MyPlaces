//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Macbook on 15.07.2020.
//  Copyright © 2020 Macbook. All rights reserved.
//

import Foundation

struct Place {
    
    
   static let restaurantNames = [ "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
                            "Sherlock Holmes", "Morris Pub", "X.O", "Speak Easy",
                            "Шок", "Классик", "Love&Life"]
    var name: String
    var location: String
    var type: String
    var image: String
    
    static func getPlaces() -> [Place] {
        var places = [Place]()
        
        for place in restaurantNames {
            places.append(Place(name: place, location: "Уфа", type: "Ресторан", image: place))
            
        }
        
        return places
    }
}
