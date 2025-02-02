//
//  TodoListTableView.swift
//  ToDo ListHHJSS
//
//  Created by Karen Vardanian on 29.01.2025.
//

import UIKit

class TodoListTableView: UITableView {
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: .plain)
        setupTableView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupTableView() {
        translatesAutoresizingMaskIntoConstraints = false
        register(TodoListCell.self, forCellReuseIdentifier: Helper.TodoListTableView.cellIdentifier)
        backgroundColor = .black
        separatorStyle = .singleLine
    }
}
