//
//  TodoDetailsViewController.swift
//  ToDo ListHHJSS
//
//  Created by Karen Vardanian on 01.02.2025.
//

import UIKit
import CoreData

class TodoDetailsViewController: UIViewController, UITextViewDelegate {
    
    var todoItem: TaskEntity?
    
    var dateLabel = CustomLabel()
    var subtitleTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        title = todoItem?.todo ?? "Детали"
        view.backgroundColor = .black
        
        dateLabel.label.text = formatDate(todoItem?.date)
        dateLabel.label.textColor = .gray
        
        subtitleTextView = UITextView()
        subtitleTextView.translatesAutoresizingMaskIntoConstraints = false
        subtitleTextView.text = todoItem?.subtitle
        subtitleTextView.font = UIFont.systemFont(ofSize: 16)
        subtitleTextView.textColor = .white
        subtitleTextView.backgroundColor = .black
        subtitleTextView.delegate = self
        subtitleTextView.isEditable = true
        subtitleTextView.isScrollEnabled = true
        subtitleTextView.textContainer.lineBreakMode = .byWordWrapping
        subtitleTextView.keyboardAppearance = .dark
        subtitleTextView.becomeFirstResponder()
        
        addSubviews()
        layoutView()
    }

    func textViewDidEndEditing(_ textView: UITextView) {
        todoItem?.subtitle = textView.text
        CoreDataManager.shared.saveContext()
    }
    
    func addSubviews() {
        view.addSubview(dateLabel.label)
        view.addSubview(subtitleTextView)
    }
    
    func layoutView() {
        NSLayoutConstraint.activate([
            dateLabel.label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            dateLabel.label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            dateLabel.label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            subtitleTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            subtitleTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            subtitleTextView.topAnchor.constraint(equalTo: dateLabel.label.bottomAnchor, constant: 20),
            subtitleTextView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
 
    func formatDate(_ date: Date?) -> String {
        guard let date = date else { return "" }
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yy"
        return formatter.string(from: date)
    }
}
