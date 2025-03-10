//
//  TodoListPresenter.swift
//  Todo ListHHJSS
//
//  Created by Karen Vardanian on 28.01.2025.
//

import Foundation

protocol TodoListPresenterProtocol: AnyObject {
    func viewDidLoad()
    func deleteTodo(_ task: TaskEntity)
    func toggleTodoCompleted(_ task: TaskEntity)
}

protocol TodoListViewProtocol: AnyObject {
    func showTasks(_ tasks: [TaskEntity])
}

final class TodoListPresenter: TodoListPresenterProtocol {
    weak var view: TodoListViewProtocol?
    private let interactor: TodoListInteractorProtocol
    private let router: TodoListRouterProtocol
    
    init(view: TodoListViewProtocol, interactor: TodoListInteractorProtocol,router: TodoListRouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    
    func viewDidLoad() {
        print("fetch todos from interactor")
        interactor.fetchTodos()
    }
}

extension TodoListPresenter: TodoListInteractorOutputProtocol {
    func didFetchToDos(_ todos: [TaskEntity]) {
        print("presenter received tasks \(todos.count)")
        view?.showTasks(todos)
    }
    
    func deleteTodo(_ task: TaskEntity) {
        interactor.deleteTodo(task)
    }
    
    func toggleTodoCompleted(_ task: TaskEntity) {
        interactor.toggleTodoCompleted(task)
    }
}
