//
//  TodoListInteractor.swift
//  Todo ListHHJSS
//
//  Created by Karen Vardanian on 28.01.2025.
//

import Foundation

protocol TodoListInteractorProtocol {
    func fetchTodos()
    func deleteTodo(_ task: TaskEntity)
    func toggleTodoCompleted(_ task: TaskEntity)
}

protocol TodoListInteractorOutputProtocol: AnyObject {
    func didFetchToDos(_ todos: [TaskEntity])
}

final class TodoListInteractor: TodoListInteractorProtocol {
    weak var presenter: TodoListInteractorOutputProtocol?
    
    func fetchTodos() {
        let savedTasks = CoreDataManager.shared.fetchTodos()
        
        if savedTasks.isEmpty {
            print("Первый запуск, загружаем данные из API")
            NetworkManager.shared.fetchTodos { [weak self] result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let tasks):
                        print("Данные из API получены, сохраняем в Core Data...")
                        CoreDataManager.shared.saveTasksFromAPI(tasks)
                        
                        let updatedTasks = CoreDataManager.shared.fetchTodos()
                        self?.presenter?.didFetchToDos(updatedTasks)
                        
                    case .failure(let error):
                        print("Ошибка загрузки API: \(error)")
                    }
                }
            }
        } else {
            print("Загружаем данные из Core Data (\(savedTasks.count) задач)...")
            presenter?.didFetchToDos(savedTasks)
        }
    }
    
    func deleteTodo(_ task: TaskEntity) {
        CoreDataManager.shared.deleteTask(task)
        fetchTodos()
    }
    
    func toggleTodoCompleted(_ task: TaskEntity) {
        CoreDataManager.shared.toggleTaskCompletion(task)
        fetchTodos()
    }
}


