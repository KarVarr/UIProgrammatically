//
//  WeatherModel.swift
//  WeatherTestTaskJunior
//
//  Created by Karen Vardanian on 13.06.2023.
//

import Foundation


class WeatherModel {
    // MARK: - Welcome
    struct Welcome: Codable {
        let coord: Coord
        let weather: [Weather]
        let base: String
        let main: Main
        let visibility: Double
        let wind: Wind
        let rain: Rain
        let clouds: Clouds
        let dt: Double
        let sys: Sys
        let timezone, id: Double
        let name: String
        let cod: Double
    }

    // MARK: - Clouds
    struct Clouds: Codable {
        let all: Double
    }

    // MARK: - Coord
    struct Coord: Codable {
        let lon, lat: Double
    }

    // MARK: - Main
    struct Main: Codable {
        let temp, feelsLike, tempMin, tempMax: Double
        let pressure, humidity, seaLevel, grndLevel: Double

        enum CodingKeys: String, CodingKey {
            case temp
            case feelsLike = "feels_like"
            case tempMin = "temp_min"
            case tempMax = "temp_max"
            case pressure, humidity
            case seaLevel = "sea_level"
            case grndLevel = "grnd_level"
        }
    }

    // MARK: - Rain
    struct Rain: Codable {
        let the1H: Double

        enum CodingKeys: String, CodingKey {
            case the1H = "1h"
        }
    }

    // MARK: - Sys
    struct Sys: Codable {
        let type, id: Double
        let country: String
        let sunrise, sunset: Double
    }

    // MARK: - Weather
    struct Weather: Codable {
        let id: Double
        let main, description, icon: String
    }

    // MARK: - Wind
    struct Wind: Codable {
        let speed: Double
        let deg: Double
        let gust: Double
    }
}
