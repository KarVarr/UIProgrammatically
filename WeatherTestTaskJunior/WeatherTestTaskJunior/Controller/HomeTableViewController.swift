//
//  TableViewController.swift
//  WeatherTestTaskJunior
//
//  Created by Karen Vardanian on 13.06.2023.
//

import UIKit

class HomeTableViewController: UITableViewController, UISearchBarDelegate, UISearchResultsUpdating {
    private let apiService = APIService()
    private var weatherDatum: [WeatherDatum] = []
    
    let searchController = UISearchController(searchResultsController: nil)
    var selectedCity: String?
    
    var city = ["Paris", "Zalupca", "Moscow", "London", "Retuzpvo", "Rome"]
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        tableView.register(WeatherTableViewCell.self, forCellReuseIdentifier: Helper.String.cellKey)
        
        addView()
        navigation()
        settings()
        layout()
        
        apiService.fetchWeatherData { [weak self] result in
            switch result {
            case .success(let weatherData):
                self?.weatherDatum = weatherData
                DispatchQueue.main.async {
                    self?.tableView.reloadData()
                }
            case .failure(let error):
                print("Error fetching weather data:", error.localizedDescription)
            }
        }
        
    }
    
    
    func addView() {
        
    }
    
    func settings() {
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search City"
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }
    
    func layout() {
        
    }
    
    func navigation() {
        title = "Weather Yandex"
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        //        if let searchText = searchController.searchBar.text {
        //
        //        }
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        88
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weatherDatum.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Helper.String.cellKey, for: indexPath) as! WeatherTableViewCell
        cell.accessoryType = .disclosureIndicator
        
        let weather = weatherDatum[indexPath.row]
        cell.cityNameLabel.label.text = weather.location.name
        cell.tempLabel.label.text = "\(weather.current.tempC) °C"
        cell.weatherDescriptionLabel.label.text = weather.current.condition.text
        
        return cell
    }
    
    
}
