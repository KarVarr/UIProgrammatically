//
//  TodoListVCTableView + Ext.swift
//  ToDo ListHHJSS
//
//  Created by Karen Vardanian on 29.01.2025.
//

import UIKit

extension TodoListViewController: UITableViewDelegate, UITableViewDataSource, TodoDetailsDelegate {
    func todoDetailsDidUpdate(_ task: TaskEntity) {
        presenter?.viewDidLoad()
    }
    
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
        return isSearching ? filteredTasks.count : tasks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        editTask(at: indexPath)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let task = isSearching ? filteredTasks[indexPath.row] : tasks[indexPath.row]
            presenter?.deleteTodo(task)
            
            if isSearching {
                filteredTasks.remove(at: indexPath.row)
                if let index = tasks.firstIndex(of: task) {
                    tasks.remove(at: index)
                }
            } else {
                tasks.remove(at: indexPath.row)
            }
            
            tableView.deleteRows(at: [indexPath], with: .automatic)
            
            if let tabBarController = self.tabBarController as? MainTabBarController {
                tabBarController.updateTasksCount()
            }
        }
    }
    
    func tableView(_ tableView: UITableView, contextMenuConfigurationForRowAt indexPath: IndexPath, point: CGPoint) -> UIContextMenuConfiguration? {
        return UIContextMenuConfiguration(identifier: nil, previewProvider: nil) { suggestedActions in
            let editAction = UIAction(title: "Редактировать", image: UIImage(named: "edit")) { _ in
                self.editTask(at: indexPath)
                print("edit")
            }
            
            let shareAction = UIAction(title: "Поделиться", image: UIImage(named: "export")) { _ in
                self.shareTask(at: indexPath)
                print("share")
            }
            
            let deleteAction = UIAction(title: "Удалить", image: UIImage(named: "trash"), attributes: .destructive) { _ in
                self.deleteTask(at: indexPath)
                print("delete")
            }
            
            return UIMenu(title: "", children: [editAction, shareAction, deleteAction])
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Helper.TodoListTableView.cellIdentifier, for: indexPath) as? TodoListCell else {
            return UITableViewCell()
        }
        
        let task = isSearching ? filteredTasks[indexPath.row] : tasks[indexPath.row]
        cell.configure(with: task)
        cell.selectionStyle = .blue
        
        cell.toggleCompletion = { [weak self] in
            self?.presenter?.toggleTodoCompleted(task)
        }
        
        return cell
    }
    
    func deleteTask(at indexPath: IndexPath) {
        let task = isSearching ? filteredTasks[indexPath.row] : tasks[indexPath.row]
        
        CoreDataManager.shared.context.delete(task)
        CoreDataManager.shared.saveContext()
        
        if isSearching {
            filteredTasks.remove(at: indexPath.row)
            if let index = tasks.firstIndex(of: task) {
                tasks.remove(at: index)
            }
        } else {
            tasks.remove(at: indexPath.row)
        }
        
        todoListTableView.deleteRows(at: [indexPath], with: .automatic)
        
        if let tabBarController = self.tabBarController as? MainTabBarController {
            tabBarController.updateTasksCount()
        }
    }
    
    func editTask(at indexPath: IndexPath) {
        let task = isSearching ? filteredTasks[indexPath.row] : tasks[indexPath.row]
        
        let editVC = TodoDetailsViewController()
        editVC.todoItem = task
        editVC.delegate = self
        
        navigationController?.pushViewController(editVC, animated: true)
    }
    
    func shareTask(at indexPath: IndexPath) {
        let task = isSearching ? filteredTasks[indexPath.row] : tasks[indexPath.row]
        
        let textToShare = "\(task.todo ?? "Задача")\n\(task.subtitle ?? "")"
        let activityVC = UIActivityViewController(activityItems: [textToShare], applicationActivities: nil)
        
        present(activityVC, animated: true)
    }
}
