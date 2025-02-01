//
//  Task.swift
//  ToDo ListHHJSS
//
//  Created by Karen Vardanian on 28.01.2025.
//

import Foundation

struct Task: Identifiable, Codable {
    var id: Int
    var todo: String
    var subtitle: String?
    var completed: Bool = false
    var date: Date?
}
