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
    
    let didTapGetWeather = GetWeather()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addViews()
        layout()
        settings()
        
        getButton.button.addTarget(self, action: #selector(didTapGetWeather.GetWeatherButton), for: .touchUpInside)
        
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

