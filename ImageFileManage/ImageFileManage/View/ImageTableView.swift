//
//  ImageTableView.swift
//  ImageFileManage
//
//  Created by Karen Vardanian on 20.02.2023.
//

import UIKit

struct ImageTableView {
    let tableView: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        
        
        return table
    }()
}
