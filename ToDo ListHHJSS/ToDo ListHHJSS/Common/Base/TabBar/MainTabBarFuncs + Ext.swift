//
//  MainTabBarFuncs + Ext.swift
//  ToDo ListHHJSS
//
//  Created by Karen Vardanian on 02.02.2025.
//

import UIKit

extension MainTabBarController {
    @objc func addButtonTapped() {
        addTaskView.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        addTaskView.alpha = 0
        dimmedBackgroundView.alpha = 0
        
        addTaskView.layoutIfNeeded()
        
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseOut) {
            self.dimmedBackgroundView.alpha = 1
            self.addTaskView.alpha = 1
            self.addTaskView.transform = CGAffineTransform.identity
            self.view.layoutIfNeeded()
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            self.titleTextField.becomeFirstResponder()
        }
    }
    
    @objc func handleAddTask() {
        guard let todoTitle = titleTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines),
              !todoTitle.isEmpty else { return }
        
        let subtitle = subtitleTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        CoreDataManager.shared.createNewTask(todo: todoTitle, subtitle: subtitle)
        
        updateTasksCount()
        
        if let todoListVC = (viewControllers?[0] as? NavBarController)?.viewControllers.first as? TodoListViewController {
            todoListVC.presenter?.viewDidLoad()
        }
        
        dismissAddTaskView()
    }
    
    @objc func handleCancel() {
        dismissAddTaskView()
    }
    
    func dismissAddTaskView() {
        titleTextField.resignFirstResponder()
        subtitleTextField.resignFirstResponder()
        
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseIn) {
            self.dimmedBackgroundView.alpha = 0
            self.addTaskView.alpha = 0
            self.addTaskView.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        } completion: { _ in
            self.titleTextField.text = nil
            self.subtitleTextField.text = nil
            self.addTaskView.transform = .identity
        }
    }
    
    func setupTabBar() {
        let todoListVC = NavBarController(rootViewController: TodoListRouter.createModule())
        viewControllers = [todoListVC]
        
        tabBar.isHidden = true
    }
    
    func updateTasksCount() {
        let tasks = CoreDataManager.shared.fetchTodos()
        tasksCountLabel.text = "\(tasks.count) Задач"
    }
    
    func removeTask(_ task: TaskEntity) {
        CoreDataManager.shared.context.delete(task)
        CoreDataManager.shared.saveContext()
        updateTasksCount()
        
        if let todoListVC = (self.viewControllers?[0] as? NavBarController)?.viewControllers.first as? TodoListViewController {
            todoListVC.presenter?.viewDidLoad()
        }
    }
}
