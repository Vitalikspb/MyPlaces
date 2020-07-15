//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Macbook on 15.07.2020.
//  Copyright © 2020 Macbook. All rights reserved.
//


import RealmSwift

class Place: Object {

    let restaurantNames = [ "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
                            "Sherlock Holmes", "Morris Pub", "X.O", "Speak Easy",
                            "Шок", "Классик", "Love&Life"]
    
    @objc dynamic var name = ""
    @objc dynamic var location: String?
    @objc dynamic var type: String?
    @objc dynamic var imageData: Data?
    
    func savePlaces() {
        for place in restaurantNames {
            
            let image = UIImage(named: place)
            guard let imageData = image?.pngData() else { return }
            let newPlace = Place()
            
            newPlace.name = place
            newPlace.location = "Уфа"
            newPlace.type = "Ресторан"
            newPlace.imageData = imageData
            
            StorageManager.saveObject(newPlace)
        }
    }
}
