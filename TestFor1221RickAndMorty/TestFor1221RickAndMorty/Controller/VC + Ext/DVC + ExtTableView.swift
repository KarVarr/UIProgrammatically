//
//  DVC + ExtTableView.swift
//  TestFor1221RickAndMorty
//
//  Created by Karen Vardanian on 19.08.2023.
//

import UIKit

extension DetailViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableViewDelegatesAndRegister() {
        tableVC.table.register(CustomTableViewCell.self, forCellReuseIdentifier: Helper.Keys.tableCellKey)
        
        tableVC.table.delegate = self
        tableVC.table.dataSource = self
    }
    
        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            switch section {
            case 0: return "Info"
            case 1: return "Origin"
            case 2: return "Episodes"
            default: return nil
            }
        }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        3
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return 3
        case 1: return 1
        case 2: return 10
        default: return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Helper.Keys.tableCellKey, for: indexPath) as! CustomTableViewCell
        
        
        return cell
    }
    
    //    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
    //        guard let header = view as? UITableViewHeaderFooterView else { return }
    //
    //        header.textLabel?.font = UIFont.systemFont(ofSize: 17, weight: .bold)
    //        header.textLabel?.textColor = .white
    //        header.textLabel?.textAlignment = .center
    //    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 48
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = .clear
        
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        label.textColor = .white
        label.textAlignment = .left // Выравнивание текста влево
        label.text = self.tableView(tableView, titleForHeaderInSection: section)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        headerView.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: headerView.leadingAnchor),
            label.centerYAnchor.constraint(equalTo: headerView.centerYAnchor)
        ])
        
        return headerView
    }
    
    
}
