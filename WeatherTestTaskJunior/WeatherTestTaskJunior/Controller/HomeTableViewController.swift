//
//  TableViewController.swift
//  WeatherTestTaskJunior
//
//  Created by Karen Vardanian on 13.06.2023.
//

import UIKit

class HomeTableViewController: UITableViewController {

    var city = ["Paris", "Zalupca", "Moscow", "London", "Retuzpvo", "Rome"]
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        tableView.register(WeatherTableViewCell.self, forCellReuseIdentifier: Helper.String.cellKey)
        
        addView()
        navigation()
        settings()
        layout()
        
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

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return city.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Helper.String.cellKey, for: indexPath) as! WeatherTableViewCell

        

        return cell
    }
    

}
