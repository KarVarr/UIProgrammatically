//
//  GetWeather.swift
//  WeatherUIProgrammarically
//
//  Created by Karen Vardanian on 24.02.2023.
//

import Foundation


class GetWeather {
    
   @objc func GetWeatherButton() {
        let urlString = "https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&current_weather=true"
        let url = URL(string: urlString)!
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) {data, response, error in
            
        }
        task.resume()
    }
}
