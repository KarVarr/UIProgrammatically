//
//  TodoDetailsViewController.swift
//  ToDo ListHHJSS
//
//  Created by Karen Vardanian on 01.02.2025.
//

import UIKit

class TodoDetailsViewController: BaseController {
    var dateLabel = CustomLabel()
    var subtitlesLabel = CustomLabel()
    
    var taskTitle: String?
    var taskDate: Date?
    var taskSubtitle: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func addSubviews() {
        view.addSubview(dateLabel.label)
        view.addSubview(subtitlesLabel.label)
    }
    
    override func settingView() {
        title = taskTitle ?? "Детали"
        view.backgroundColor = .black
        
        
        subtitlesLabel.label.text = taskSubtitle
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none  
        
        if let taskDate = taskDate {
            dateLabel.label.text = dateFormatter.string(from: taskDate)
        } else {
            dateLabel.label.text = "Нет даты"
        }
        
        dateLabel.label.textColor = .gray
        subtitlesLabel.label.textColor = .white
    }
    
    override func layoutView() {
        NSLayoutConstraint.activate([
            dateLabel.label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            dateLabel.label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            dateLabel.label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            subtitlesLabel.label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            subtitlesLabel.label.topAnchor.constraint(equalTo: dateLabel.label.bottomAnchor, constant: 20),
            subtitlesLabel.label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
    }
}
