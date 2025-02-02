//
//  MainTabBarController.swift
//  ToDo ListHHJSS
//
//  Created by Karen Vardanian on 01.02.2025.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    private let customTabBar: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 39/255, green: 39/255, blue: 41/255, alpha: 1.0) // #272729
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let tasksCountLabel: UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.font = .systemFont(ofSize: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let addButton: UIButton = {
        let button = UIButton(type: .system)
        let config = UIImage.SymbolConfiguration(pointSize: 17, weight: .medium)
        let image = UIImage(systemName: "square.and.pencil", withConfiguration: config)
        button.setImage(image, for: .normal)
        button.tintColor = .yellow
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let dimmedBackgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        view.alpha = 0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let addTaskView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 39/255, green: 39/255, blue: 41/255, alpha: 1.0)
        view.layer.cornerRadius = 16
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        view.layer.masksToBounds = true
        return view
    }()
    
    private let titleTextField: UITextField = {
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
    
    private let subtitleTextField: UITextField = {
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
    
    private let addTaskButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Добавить", for: .normal)
        button.backgroundColor = .yellow
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let cancelButton: UIButton = {
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
    
    private func setupAddTaskView() {
        view.addSubview(dimmedBackgroundView)
        view.addSubview(addTaskView)
        addTaskView.addSubview(titleTextField)
        addTaskView.addSubview(subtitleTextField)
        addTaskView.addSubview(addTaskButton)
        addTaskView.addSubview(cancelButton)
        
        addTaskView.alpha = 0
        
        NSLayoutConstraint.activate([
            dimmedBackgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            dimmedBackgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            dimmedBackgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            dimmedBackgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            addTaskView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            addTaskView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            addTaskView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            titleTextField.topAnchor.constraint(equalTo: addTaskView.topAnchor, constant: 20),
            titleTextField.leadingAnchor.constraint(equalTo: addTaskView.leadingAnchor, constant: 16),
            titleTextField.trailingAnchor.constraint(equalTo: addTaskView.trailingAnchor, constant: -16),
            titleTextField.heightAnchor.constraint(equalToConstant: 44),
            
            subtitleTextField.topAnchor.constraint(equalTo: titleTextField.bottomAnchor, constant: 12),
            subtitleTextField.leadingAnchor.constraint(equalTo: addTaskView.leadingAnchor, constant: 16),
            subtitleTextField.trailingAnchor.constraint(equalTo: addTaskView.trailingAnchor, constant: -16),
            subtitleTextField.heightAnchor.constraint(equalToConstant: 44),
            
            addTaskButton.topAnchor.constraint(equalTo: subtitleTextField.bottomAnchor, constant: 20),
            addTaskButton.leadingAnchor.constraint(equalTo: addTaskView.leadingAnchor, constant: 16),
            addTaskButton.trailingAnchor.constraint(equalTo: addTaskView.trailingAnchor, constant: -16),
            addTaskButton.heightAnchor.constraint(equalToConstant: 44),
            
            cancelButton.topAnchor.constraint(equalTo: addTaskButton.bottomAnchor, constant: 12),
            cancelButton.leadingAnchor.constraint(equalTo: addTaskView.leadingAnchor, constant: 16),
            cancelButton.trailingAnchor.constraint(equalTo: addTaskView.trailingAnchor, constant: -16),
            cancelButton.heightAnchor.constraint(equalToConstant: 44),
            cancelButton.bottomAnchor.constraint(equalTo: addTaskView.bottomAnchor, constant: -20)
        ])
        
        addTaskButton.addTarget(self, action: #selector(handleAddTask), for: .touchUpInside)
        cancelButton.addTarget(self, action: #selector(handleCancel), for: .touchUpInside)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleCancel))
        dimmedBackgroundView.addGestureRecognizer(tapGesture)
    }
    
    @objc private func addButtonTapped() {
        addTaskView.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        addTaskView.alpha = 0
        dimmedBackgroundView.alpha = 0
        
        addTaskView.layoutIfNeeded()
        
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseOut) {
            self.dimmedBackgroundView.alpha = 1
            self.addTaskView.alpha = 1
            self.addTaskView.transform = CGAffineTransform.identity
            self.view.layoutIfNeeded()
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            self.titleTextField.becomeFirstResponder()
        }
    }
    
    @objc private func handleAddTask() {
        guard let todoTitle = titleTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines),
              !todoTitle.isEmpty else { return }
        
        let subtitle = subtitleTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        CoreDataManager.shared.createNewTask(todo: todoTitle, subtitle: subtitle)
        
        updateTasksCount()
        
        if let todoListVC = (viewControllers?[0] as? NavBarController)?.viewControllers.first as? TodoListViewController {
            todoListVC.presenter?.viewDidLoad()
        }
        
        dismissAddTaskView()
    }
    
    @objc private func handleCancel() {
        dismissAddTaskView()
    }
    
    private func dismissAddTaskView() {
        titleTextField.resignFirstResponder()
        subtitleTextField.resignFirstResponder()
        
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseIn) {
            self.dimmedBackgroundView.alpha = 0
            self.addTaskView.alpha = 0
            self.addTaskView.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        } completion: { _ in
            self.titleTextField.text = nil
            self.subtitleTextField.text = nil
            self.addTaskView.transform = .identity
        }
    }
    
    private func setupCustomTabBar() {
        view.addSubview(customTabBar)
        customTabBar.addSubview(tasksCountLabel)
        customTabBar.addSubview(addButton)
        
        NSLayoutConstraint.activate([
            customTabBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            customTabBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            customTabBar.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            customTabBar.heightAnchor.constraint(equalToConstant: 94),
            
            tasksCountLabel.centerXAnchor.constraint(equalTo: customTabBar.centerXAnchor),
            tasksCountLabel.topAnchor.constraint(equalTo: customTabBar.topAnchor, constant: 16),
            
            addButton.trailingAnchor.constraint(equalTo: customTabBar.trailingAnchor, constant: -16),
            addButton.centerYAnchor.constraint(equalTo: tasksCountLabel.centerYAnchor)
        ])
        
        addButton.addTarget(self, action: #selector(addButtonTapped), for: .touchUpInside)
    }
    
    private func setupTabBar() {
        let todoListVC = NavBarController(rootViewController: TodoListRouter.createModule())
        viewControllers = [todoListVC]
        
        tabBar.isHidden = true
    }
    
    private func updateTasksCount() {
        let tasks = CoreDataManager.shared.fetchTodos()
        tasksCountLabel.text = "\(tasks.count) Задач"
    }
    
    func removeTask(_ task: TaskEntity) {
        CoreDataManager.shared.context.delete(task)
        CoreDataManager.shared.saveContext()
        updateTasksCount()
        
        if let todoListVC = (self.viewControllers?[0] as? NavBarController)?.viewControllers.first as? TodoListViewController {
            todoListVC.presenter?.viewDidLoad()
        }
    }
}
