//
//  TodoListViewController.swift
//  Todo ListHHJSS
//
//  Created by Karen Vardanian on 28.01.2025.
//

import UIKit
import CoreData

class TodoListViewController: BaseController, TodoListViewProtocol {
    var presenter: TodoListPresenterProtocol?
    var tasks: [TaskEntity] = []
    let todoListTableView = TodoListTableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTodoListTableView()
        setupConstraints()
        presenter?.viewDidLoad()
        
        let context = CoreDataManager.shared.context
        let request: NSFetchRequest<TaskEntity> = TaskEntity.fetchRequest()
        
        do {
            let tasks = try context.fetch(request)
            print("кор дата работает загрузил:\(tasks.count)")
        } catch {
            print("coredata не работает \(error)")
        }
        
    }
    
    override func addSubviews() {
        view.addSubview(todoListTableView)
    }
    
    override func settingView() {
        title = "Задачи"
        view.backgroundColor = .black
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            todoListTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            todoListTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            todoListTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            todoListTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    func showTasks(_ tasks: [TaskEntity]) {
        DispatchQueue.main.async {
            self.tasks = tasks
            print("tasks in UI: \(tasks.count)")
            self.todoListTableView.reloadData()
        }
    }
}

