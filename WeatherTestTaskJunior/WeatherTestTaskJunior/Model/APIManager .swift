//
//  APIManager .swift
//  WeatherTestTaskJunior
//
//  Created by Karen Vardanian on 13.06.2023.
//

import Foundation

class APIManager {
    static let shared = APIManager()
    
    var urlCoordinatesCityData = "https://api.openweathermap.org/geo/1.0/direct?q=Moscow&limit=5&appid=\(APIKeys.openWeatherAPI)"
    var urlWeatherData = "https://api.openweathermap.org/data/2.5/weather?lat=\(55.75)&lon=\(37.61)&appid=\(APIKeys.openWeatherAPI)"
    
    func getWeather (completion: @escaping(WeatherData?) -> Void) {
        let url = URL(string: urlWeatherData)!
        let request = URLRequest(url: url)
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else {
                completion(nil)
                return
            }
            
            if let weatherData = try? JSONDecoder().decode(WeatherData.self, from: data) {
                completion(weatherData)
            } else {
                completion(nil)
                print("Error: Failed load data")
            }
        }
        task.resume()
    }
    
    func getCoordinatesCity() {
        guard let url = URL(string: urlCoordinatesCityData) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }
            
            guard let data = data else {
                print("No data received")
                return
            }
            
            do {
                let locations = try JSONDecoder().decode([GeocodingCityData].self, from: data)
                print(locations)
            } catch  {
                print("Error decoding JSON: \(error.localizedDescription)")
            }
        }
        task.resume()
        
    }
}
