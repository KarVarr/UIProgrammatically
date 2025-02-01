//
//  TaskEntity.swift
//  ToDo ListHHJSS
//
//  Created by Karen Vardanian on 01.02.2025.
//

import Foundation
import CoreData

@objc(TaskEntity)
public class TaskEntity: NSManagedObject { }

extension TaskEntity {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<TaskEntity> {
        return NSFetchRequest<TaskEntity>(entityName: "TaskEntity")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var todo: String?
    @NSManaged public var completed: Bool
    @NSManaged public var date: Date?
    @NSManaged public var subtitle: String?
}

extension TaskEntity : Identifiable { }
