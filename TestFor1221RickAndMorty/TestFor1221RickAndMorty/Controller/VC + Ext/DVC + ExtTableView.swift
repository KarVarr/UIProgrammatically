//
//  DVC + ExtTableView.swift
//  TestFor1221RickAndMorty
//
//  Created by Karen Vardanian on 19.08.2023.
//

import UIKit

extension DetailViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableViewDelegatesAndRegister() {
        tableVC.table.register(CustomTableViewCell.self, forCellReuseIdentifier: "InfoCell")
        tableVC.table.register(CustomTableViewCell.self, forCellReuseIdentifier: "OriginCell")
        tableVC.table.register(CustomTableViewCell.self, forCellReuseIdentifier: "EpisodeCell")
//        tableVC.table.register(CustomTableViewCell.self, forCellReuseIdentifier: Helper.Keys.tableCellKey)
        
        tableVC.table.delegate = self
        tableVC.table.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
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
        case 0: return 1
        case 1: return 1
        case 2: return 11
        default: return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reuseIdentifier: String
        
        switch indexPath.section {
        case 0: reuseIdentifier = Helper.Keys.tableInfoCell
        case 1: reuseIdentifier = Helper.Keys.tableOriginCell
        case 2: reuseIdentifier = Helper.Keys.tableEpisodeCell
        default: reuseIdentifier = "DefaultCell"
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! CustomTableViewCell
        
        cell.backgroundColor = Helper.Colors.cellBlackColor
        cell.layer.cornerRadius = 24
        cell.layer.borderColor = Helper.Colors.mainBlackColor.cgColor
        cell.layer.borderWidth = 8
        
        cell.selectionStyle = .none
        
        
        
        switch indexPath.section {
        case 0: break
//            cell.infoSpecies.labelView.text = 
        case 1:
            cell.originName.labelView.text = "Earth"
            cell.originType.labelView.text = "Planet"
            
        case 2:
//                        cell.episodeName.labelView.text = episode.name
//            cell.episodeDate.labelView.text = episode.air_date
//            cell.episodeSeason.labelView.text = episode.formattedEpisode
            
            break
        default:
            break
        }
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0: return 140
        case 1: return 96
        case 2: return 112
        default: return 80
        }
    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 48
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = .clear
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = Helper.Fonts.AppleSDGothicNeoBold(with: 17)
        label.textColor = Helper.Colors.whiteColor
        label.text = self.tableView(tableView, titleForHeaderInSection: section)
        
        headerView.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: headerView.leadingAnchor,constant: 8),
            label.centerYAnchor.constraint(equalTo: headerView.centerYAnchor)
        ])
        
        return headerView
    }
    
    
}
