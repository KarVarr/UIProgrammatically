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
                fatalError("Ошибка загрузки Core Data: \(error)")
            }
        }
    }
    
    var context: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    func saveContext() {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
                print("Кор дата сохранила данные")
            } catch {
                print("Ошибка сохранения данных: \(error)")
            }
        }
    }
    
    func fetchTodos() -> [TaskEntity] {
        let request: NSFetchRequest<TaskEntity> = TaskEntity.fetchRequest()
        do {
            let tasks = try context.fetch(request)
            print("Загрузили \(tasks.count) задач из Core Data")
            return tasks
        } catch {
            print("Ошибка загрузки задач: \(error)")
            return []
        }
    }
    
    //MARK: - Данные из API в codeData
    func saveTasksFromAPI(_ tasks: [Task]) {
        for task in tasks {
            let newTask = TaskEntity(context: context)
            newTask.id = Int64(task.id)
            newTask.todo = task.todo
            newTask.subtitle = task.subtitle
            newTask.completed = task.completed
            newTask.date = task.date ?? Date()
        }
        saveContext()
        print("Данные из API сохранены в Core Data")
    }
}

