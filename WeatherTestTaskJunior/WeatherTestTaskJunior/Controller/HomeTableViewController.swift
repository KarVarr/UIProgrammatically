//
//  TableViewController.swift
//  WeatherTestTaskJunior
//
//  Created by Karen Vardanian on 13.06.2023.
//

import UIKit

class HomeTableViewController: UITableViewController {
    var weatherData: WeatherData?
    
    var city = ["Paris", "Zalupca", "Moscow", "London", "Retuzpvo", "Rome"]
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        tableView.register(WeatherTableViewCell.self, forCellReuseIdentifier: Helper.String.cellKey)
        
        addView()
        navigation()
        settings()
        layout()
        
        APIManager.shared.getWeather { [weak self] weatherData in
            self?.weatherData = weatherData
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
        
        APIManager.shared.getCoordinatesCity()
    }
    
    
    func addView() {
        
    }
    
    func settings() {
        
    }
    
    func layout() {
        
    }
    
    func navigation() {
        title = "Weather Yandex"
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        88
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return city.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Helper.String.cellKey, for: indexPath) as! WeatherTableViewCell
        cell.accessoryType = .disclosureIndicator
        if let weatherData = weatherData {
            // Pass the corresponding data to the cell's labels
            cell.tempLabel.label.text = "\(weatherData.main.temp)"
            cell.cityNameLabel.label.text = weatherData.name.uppercased()
            if let weather = weatherData.weather.first {
                cell.weatherDescriptionLabel.label.text = weather.description.capitalized
            }
        } else {
            // Handle case when weatherData is nil
            cell.tempLabel.label.text = ""
            cell.cityNameLabel.label.text = ""
            cell.weatherDescriptionLabel.label.text = ""
        }
        
        return cell
    }
    
    
}
