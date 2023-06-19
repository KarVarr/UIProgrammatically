//
//  APIService.swift
//  WeatherTestTaskJunior
//
//  Created by Karen Vardanian on 13.06.2023.
//


import Foundation

class APIService {
    func fetchWeatherData(completion: @escaping (WeatherDatum?) -> Void) {
        let urlString = "https://api.weatherapi.com/v1/current.json?key=\(APIKeys.openWeatherAPI)&q=London&aqi=no"
        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print("Error fetching weather data:", error.localizedDescription)
                completion(nil)
                return
            }
            
            guard let data = data else {
                completion(nil)
                return
            }
            
            do {
                let cityData = try JSONDecoder().decode(WeatherDatum.self, from: data)
                completion(cityData)
                print(cityData)
            } catch {
                print("Error decoding weather data:", error.localizedDescription)
                completion(nil)
            }
        }
        task.resume()
    }
}
