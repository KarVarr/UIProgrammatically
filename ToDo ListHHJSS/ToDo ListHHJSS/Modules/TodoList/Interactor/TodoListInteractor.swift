//
//  TodoListInteractor.swift
//  Todo ListHHJSS
//
//  Created by Karen Vardanian on 28.01.2025.
//

import Foundation

protocol TodoListInteractorProtocol {
    func fetchTodos()
}

protocol TodoListInteractorOutputProtocol: AnyObject {
    func didFetchToDos(_ toDos: [Task])
}

final class TodoListInteractor: TodoListInteractorProtocol {
    weak var presenter: TodoListInteractorOutputProtocol?
    
    func fetchTodos() {
        print("interactor fetchTodos() called")
        let tasks = [
            Task(title: "Молоко купи 1"),
            Task(title: "Молоко купи 2"),
            Task(title: "Молоко купи 3", isDone: true)
        ]
        presenter?.didFetchToDos(tasks)
    }
}
