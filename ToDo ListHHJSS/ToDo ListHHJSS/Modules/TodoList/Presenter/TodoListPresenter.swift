//
//  TodoListPresenter.swift
//  Todo ListHHJSS
//
//  Created by Karen Vardanian on 28.01.2025.
//

import Foundation

protocol TodoListPresenterProtocol: AnyObject {
    func viewDidLoad()
}

protocol TodoListViewProtocol: AnyObject {
    func showTasks(_ tasks: [Task])
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
    func didFetchToDos(_ todos: [Task]) {
        print("presenter received tasks \(todos.map {$0.title})")
        view?.showTasks(todos)
    }
}
