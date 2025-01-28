//
//  TodoListViewController.swift
//  Todo ListHHJSS
//
//  Created by Karen Vardanian on 28.01.2025.
//

import UIKit

class TodoListViewController: BaseController, TodoListViewProtocol {
    var presenter: TodoListPresenterProtocol?
    private var tasks: [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view - call the presenter.viewdidload")
        presenter?.viewDidLoad()
    }
    
    override func settingView() {
        title = "Задачи"
        view.backgroundColor = .white
    }

    
    func showTasks(_ tasks: [Task]) {
        self.tasks = tasks
        print("tasks in UI: \(tasks.map {$0.title})")
    }
}

