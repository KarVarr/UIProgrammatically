//
//  APIManager .swift
//  WeatherTestTaskJunior
//
//  Created by Karen Vardanian on 13.06.2023.
//

import Foundation

class APIManager {
    static let shared = APIManager()
    
    let weatherURL = "https://api.weatherapi.com/v1/current.json?key=\(APIKeys.openWeatherAPI)&q=London&aqi=no"
    
    func fetchWeather(_ city: String) {
        let urlString = "\(weatherURL)&q=\(city)"
        print(urlString)
    }
}
