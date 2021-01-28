//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Viktorija Romanjuk on 26.01.2021.
//

import UIKit

struct Place {
    var name: String
    var location: String?
    var type: String?
    var image: UIImage?
    var restaurantImage: String?
    
    static let restaurantNames = [
        "Murakami", "Руккола", "McDonalds",
        "Охота на овец", "Dialog у Беллы", "AromaKava", "Тюбетейка",
        "Прага", "Il Molino", "ODESSA", "Мароккана", "Мама МАНАНА",
        "ORLY", "Mushlya", "Маца и Устрицы",
        "Жизнь Замечательных Людей", "Имбирь", "Кувшин"
    ]
    
    static func getPlaces() -> [Place] {
        var places = [Place]()
        
        for place in restaurantNames {
            places.append(Place(name: place, location: "Kiev", type: "Restaurant", image: nil, restaurantImage: place))
        }
        
        
        return places
    }
}
//this file about table model
