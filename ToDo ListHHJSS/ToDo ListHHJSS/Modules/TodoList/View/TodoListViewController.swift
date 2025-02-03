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
    var filteredTasks: [TaskEntity] = []
    var searchController: UISearchController!
    let todoListTableView = TodoListTableView()
    
    var isSearching: Bool {
        return searchController.isActive && !searchBarIsEmpty
    }

    var searchBarIsEmpty: Bool {
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSearchController()
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
    
    private func setupSearchController() {
        searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Поиск"
        searchController.searchBar.tintColor = Helper.Colors.hexColor(hex: "#FED702")
        searchController.searchBar.barStyle = .black
        
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }
    
    override func settingView() {
        title = "Задачи"
        view.backgroundColor = .black
        
        let backButton = UIBarButtonItem(title: "Назад", style: .plain, target: nil, action: nil)
        backButton.setTitleTextAttributes([.foregroundColor: Helper.Colors.hexColor(hex: "#FED702")], for: .normal)
        navigationItem.backBarButtonItem = backButton
        navigationController?.navigationBar.tintColor = Helper.Colors.hexColor(hex: "#FED702")
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
            self.tasks = tasks
            if self.isSearching {
                self.filterTasks(self.searchController.searchBar.text ?? "")
            }
            print("задачи в UI: \(tasks.count)")
            self.todoListTableView.reloadData()
        }
    }}

