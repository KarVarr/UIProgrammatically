//
//  MainTabBarController.swift
//  ToDo ListHHJSS
//
//  Created by Karen Vardanian on 01.02.2025.
//

import UIKit

class MainTabBarController: UITabBarController {
    let customTabBar: UIView = {
        let view = UIView()
        view.backgroundColor = Helper.Colors.hexColor(hex: "#272729")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let tasksCountLabel: UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.font = .systemFont(ofSize: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let addButton: UIButton = {
        let button = UIButton(type: .system)
        let config = UIImage.SymbolConfiguration(pointSize: 17, weight: .medium)
        let image = UIImage(systemName: "square.and.pencil", withConfiguration: config)
        button.setImage(image, for: .normal)
        button.tintColor = .yellow
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let dimmedBackgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        view.alpha = 0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let addTaskView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 39/255, green: 39/255, blue: 41/255, alpha: 1.0)
        view.layer.cornerRadius = 16
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        view.layer.masksToBounds = true
        return view
    }()
    
    let titleTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Название задачи"
        tf.backgroundColor = .black
        tf.textColor = .white
        tf.layer.cornerRadius = 8
        tf.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        tf.leftViewMode = .always
        tf.translatesAutoresizingMaskIntoConstraints = false
        
        let placeholderColor = UIColor.gray
        tf.attributedPlaceholder = NSAttributedString(
            string: tf.placeholder ?? "",
            attributes: [NSAttributedString.Key.foregroundColor: placeholderColor]
        )
        
        return tf
    }()
    
    let subtitleTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Описание (необязательно)"
        tf.backgroundColor = .black
        tf.textColor = .white
        tf.layer.cornerRadius = 8
        tf.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        tf.leftViewMode = .always
        tf.translatesAutoresizingMaskIntoConstraints = false
        
        let placeholderColor = UIColor.gray
        tf.attributedPlaceholder = NSAttributedString(
            string: tf.placeholder ?? "",
            attributes: [NSAttributedString.Key.foregroundColor: placeholderColor]
        )
        return tf
    }()
    
    let addTaskButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Добавить", for: .normal)
        button.backgroundColor = Helper.Colors.hexColor(hex: "#FED702")
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
     let cancelButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Отмена", for: .normal)
        button.setTitleColor(.yellow, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCustomTabBar()
        setupTabBar()
        setupAddTaskView()
        updateTasksCount()
    }
}
