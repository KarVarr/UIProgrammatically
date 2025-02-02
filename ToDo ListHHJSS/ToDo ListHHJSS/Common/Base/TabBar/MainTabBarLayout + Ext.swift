//
//  MainTabBarLayout + Ext.swift
//  ToDo ListHHJSS
//
//  Created by Karen Vardanian on 02.02.2025.
//

import UIKit

extension MainTabBarController {
    func setupAddTaskView() {
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
    
    func setupCustomTabBar() {
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
}


