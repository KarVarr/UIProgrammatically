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
        setupConstraints()
        
        let context = CoreDataManager.shared.context
        let request: NSFetchRequest<TaskEntity> = TaskEntity.fetchRequest()
        
        do {
            let tasks = try context.fetch(request)
            print("кор дата работает загрузил:\(tasks.count)")
        } catch {
            print("coredata не работает \(error)")
        }
        presenter?.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        todoListTableView.reloadData()
    }
    
    override func addSubviews() {
        view.addSubview(todoListTableView)
        configureTodoListTableView()
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
    
    func addNewTask(todo: String, subtitle: String?) {
        CoreDataManager.shared.createNewTask(todo: todo, subtitle: subtitle)
        
        let updatedTasks = CoreDataManager.shared.fetchTodos()
        showTasks(updatedTasks)
    }
    
    func showTasks(_ tasks: [TaskEntity]) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            
            if self.isViewLoaded, self.view.window != nil {
                self.tasks = tasks
                print(" задачи в UI: \(tasks.count)")
                self.todoListTableView.reloadData()
            } else {
                print("TableView не в view пропускаем reloadData()")
            }
        }
    }
}

