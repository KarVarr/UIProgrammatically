//
//  CustomTableView.swift
//  TestFor1221RickAndMorty
//
//  Created by Karen Vardanian on 19.08.2023.
//

import UIKit


class CustomTableView {
    let table: UITableView = {
        let table = UITableView(frame: .zero, style: .plain)
        table.backgroundColor = .clear
        table.showsVerticalScrollIndicator = false 
        table.translatesAutoresizingMaskIntoConstraints = false 
        return table
    }()
}
