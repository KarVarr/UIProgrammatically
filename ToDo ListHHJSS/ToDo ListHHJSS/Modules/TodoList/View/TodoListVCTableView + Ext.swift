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
        todoListTableView.rowHeight = UITableView.automaticDimension
        todoListTableView.estimatedRowHeight = 80
        todoListTableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 94, right: 0)
        todoListTableView.separatorColor = .white.withAlphaComponent(0.7)
        todoListTableView.separatorInset = UIEdgeInsets(top: .zero, left: 20, bottom: .zero, right: 20)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tasks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let destination = TodoDetailsViewController()
        let task = tasks[indexPath.row]
        destination.taskTitle = task.todo
        destination.taskDate = task.date
        destination.taskSubtitle = task.subtitle
        navigationController?.pushViewController(destination, animated: true)
    }

    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let task = tasks[indexPath.row]
            
            presenter?.deleteTodo(task)
            
            CATransaction.begin()
            CATransaction.setCompletionBlock { [weak self] in
                if let rightBarButton = self?.navigationItem.rightBarButtonItem?.customView as? UILabel {
                    rightBarButton.text = "\(self?.tasks.count ?? 0) Задач"
                }
            }
            
            tasks.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            
            CATransaction.commit()
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Helper.TodoListTableView.cellIdentifier, for: indexPath) as? TodoListCell else {
            return UITableViewCell()
        }
        
        let task = tasks[indexPath.row]
        cell.configure(with: task)
        cell.selectionStyle = .blue
        
        cell.toggleCompletion = { [weak self] in
            self?.presenter?.toggleTodoCompleted(task)
        }
        
        return cell
    }
}
