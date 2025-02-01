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
        print("отправляем запрос на список")
        NetworkManager.shared.fetchTodos { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let tasks):
                    print("получили данные")
                    self?.presenter?.didFetchToDos(tasks)
                case .failure(let error):
                    print("ошибка нах, нет данных \(error)")
                }
            }
        }
    }
}
