//
//  WeatherLocation.swift
//  WeatherGift
//
//  Created by John Gallaugher on 2/29/20.
//  Copyright © 2020 John Gallaugher. All rights reserved.
//

import Foundation

class WeatherLocation: Codable {
    var name: String
    var latitude: Double
    var longitude: Double
    
    init(name: String, latitude: Double, longitude: Double) {
        self.name = name
        self.latitude = latitude
        self.longitude = longitude
    }
    

}
