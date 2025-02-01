//
//  CoreDataManager.swift
//  ToDo ListHHJSS
//
//  Created by Karen Vardanian on 01.02.2025.
//

import CoreData
import UIKit

final class CoreDataManager {
    static let shared = CoreDataManager()
    
    private let persistentContainer: NSPersistentContainer
    
    private init() {
        persistentContainer = NSPersistentContainer(name: "DataModel")
        persistentContainer.loadPersistentStores { _, error in
            if let error = error {
                fatalError("Не агрузилось сore data: \(error)")
            }
        }
    }
    
    var context: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    func fetchTodos() -> [TaskEntity] {
        let request: NSFetchRequest<TaskEntity> = TaskEntity.fetchRequest()
        do {
            return try context.fetch(request)
        } catch {
            print("ошибка загрузки: \(error)")
            return []
        }
    }
    

    func addTask(todo: String, date: Date?, subtitle: String?) {
        let task = TaskEntity(context: context)
        task.id = UUID()
        task.todo = todo
        task.completed = false
        task.date = date
        task.subtitle = subtitle
        
        saveContext()
    }
    
    func updateTask(_ task: TaskEntity, completed: Bool) {
        task.completed = completed
        saveContext()
    }
    
    func deleteTask(_ task: TaskEntity) {
        context.delete(task)
        saveContext()
    }
    
 
    private func saveContext() {
        do {
            try context.save()
        } catch {
            print("не сохранилось, ошибка: \(error)")
        }
    }
}

