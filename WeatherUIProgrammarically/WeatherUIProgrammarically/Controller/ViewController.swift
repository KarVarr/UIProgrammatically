//
//  ViewController.swift
//  WeatherUIProgrammarically
//
//  Created by Karen Vardanian on 24.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var weatherLabel = Temperature()
    var getButton = ButtonTemperature()
    
//    let getWeatherButton = Weather()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addViews()
        layout()
        settings()
        
        getButton.button.addTarget(self, action: #selector(getWeather), for: .touchUpInside)
        
    }
    
    @objc func getWeather() {
        let urlString = "https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&current_weather=true"
          let url = URL(string: urlString)!
          let request = URLRequest(url: url)
          let task = URLSession.shared.dataTask(with: request) {data, response, error in
              if let error = error {
                  print("Error: \(error.localizedDescription)")
                  return
              }
              do {
                  let weatherData = try JSONDecoder().decode(WeatherData.self, from: data!)
                  DispatchQueue.main.async {
                      self.weatherLabel.label.text = "\(weatherData.currentWeather.temperature) °C"
                      
                  }
              } catch {
                  print("Error decoding weather data: \(error.localizedDescription) ")
              }
          }
          task.resume()
    }


}

extension ViewController {
    func addViews() {
        view.addSubview(weatherLabel.label)
        view.addSubview(getButton.button)
        
        
    }
    
    func layout() {
        NSLayoutConstraint.activate([
            weatherLabel.label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            weatherLabel.label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            
            getButton.button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            getButton.button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100),
            getButton.button.widthAnchor.constraint(equalToConstant: 100),
            getButton.button.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    func settings() {
        view.backgroundColor = .systemMint
        getButton.button.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    
}

