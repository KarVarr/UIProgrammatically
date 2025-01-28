//
//  Task.swift
//  ToDo ListHHJSS
//
//  Created by Karen Vardanian on 28.01.2025.
//

import Foundation

struct Task: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String?
    var isDone: Bool = false
    var Date: Date?
}
