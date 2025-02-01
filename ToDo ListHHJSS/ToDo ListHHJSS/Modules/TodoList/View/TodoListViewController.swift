//
//  TodoListViewController.swift
//  Todo ListHHJSS
//
//  Created by Karen Vardanian on 28.01.2025.
//

import UIKit

class TodoListViewController: BaseController, TodoListViewProtocol {
    var presenter: TodoListPresenterProtocol?
    var tasks: [Task] = []
    let todoListTableView = TodoListTableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTodoListTableView()
        setupConstraints()
        presenter?.viewDidLoad()
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

    func showTasks(_ tasks: [Task]) {
        self.tasks = tasks
        print("tasks in UI: \(tasks.count)")
        todoListTableView.reloadData()
    }
}

