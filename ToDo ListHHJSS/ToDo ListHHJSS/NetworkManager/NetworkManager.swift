//
//  NetworkManager.swift
//  ToDo ListHHJSS
//
//  Created by Karen Vardanian on 01.02.2025.
//

import Foundation

final class NetworkManager {
    static let shared = NetworkManager()
    
    private init() {}
    
    func fetchTodos(completion: @escaping (Result<[Task], Error>) -> Void) {
        guard let url = URL(string: "https://dummyjson.com/todos") else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else { return }
            
            do {
                let response = try JSONDecoder().decode(TodoResponse.self, from: data)
                completion(.success(response.todos))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}

struct TodoResponse: Codable {
    let todos: [Task]
}

