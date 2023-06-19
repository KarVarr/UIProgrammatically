//
//  APIService.swift
//  WeatherTestTaskJunior
//
//  Created by Karen Vardanian on 13.06.2023.
//


import Foundation

class APIService {
    func fetchWeatherData(completion: @escaping (Result<[WeatherDatum], Error>) -> Void) {
        let urlString = "https://api.weatherapi.com/v1/current.json?key=\(APIKeys.openWeatherAPI)&q=London&aqi=no"
        guard let url = URL(string: urlString) else { return }

        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                completion(.failure(error)) // Return failure result
                return
            }

            guard let data = data else {
                return
            }

            do {
                let weatherData = try JSONDecoder().decode([WeatherDatum].self, from: data)
                completion(.success(weatherData))
                print(weatherData)
            } catch {
                completion(.failure(error))
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
}

