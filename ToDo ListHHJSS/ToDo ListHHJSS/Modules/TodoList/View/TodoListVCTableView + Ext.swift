//
//  TodoListVCTableView + Ext.swift
//  ToDo ListHHJSS
//
//  Created by Karen Vardanian on 29.01.2025.
//

import UIKit

extension TodoListViewController: UITableViewDelegate, UITableViewDataSource {
    func configureTodoListTableView() {
        todoListTableView.dataSource = self
        todoListTableView.delegate = self
        todoListTableView.register(TodoListCell.self, forCellReuseIdentifier: Helper.TodoListTableView.cellIdentifier)
        todoListTableView.frame = view.bounds
        todoListTableView.backgroundColor = .black
        todoListTableView.separatorColor = .white.withAlphaComponent(0.7)
        todoListTableView.separatorInset = UIEdgeInsets(top: .zero, left: 20, bottom: .zero, right: 20)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tasks.count
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Helper.TodoListTableView.cellIdentifier, for: indexPath) as? TodoListCell else {
            return UITableViewCell()
        }
        
        cell.accessoryType = .disclosureIndicator
        let task = tasks[indexPath.row]
        cell.configure(with: task)
        
        return cell
    }
}
