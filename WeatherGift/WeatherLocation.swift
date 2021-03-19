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
    
    func getData() {
        let urlString = "YOUR_VALID_API_CALLING_STRING_HERE"
        guard let url = URL(string: urlString) else {
            print("😡 ERROR: Could not create a URL from \(urlString)")
            return
        }
        // Create Session
        let session = URLSession.shared
        // Get data with .dataTask method
        let task = session.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("😡 ERROR: \(error.localizedDescription)")
            }
            
            // deal with the data
            do {
                let json = try JSONSerialization.jsonObject(with: data!, options: [])
                print("😎 \(json)")
            } catch {
                print("😡 JSON ERROR: \(error.localizedDescription)")
            }
        }
        task.resume()
    }
}
