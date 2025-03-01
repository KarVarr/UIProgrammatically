//
//  CreateChildView + Ext.swift
//  AboutMeAlef
//
//  Created by Karen Vardanian on 01.03.2025.
//

import UIKit

extension ViewController {
    func createChildView() -> UIView {
        let childView = UIView()
        childView.translatesAutoresizingMaskIntoConstraints = false
        
        let nameContainer = UIView()
        nameContainer.backgroundColor = .white
        nameContainer.layer.borderWidth = 1
        nameContainer.layer.borderColor = UIColor.systemGray5.cgColor
        nameContainer.layer.cornerRadius = 4
        nameContainer.translatesAutoresizingMaskIntoConstraints = false
        
        let nameLabel = UILabel()
        nameLabel.text = "Имя"
        nameLabel.textColor = .gray
        nameLabel.font = UIFont.systemFont(ofSize: 14)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let nameField = UITextField()
        nameField.placeholder = "Имя"
        nameField.font = UIFont.systemFont(ofSize: 16)
        nameField.translatesAutoresizingMaskIntoConstraints = false
        
        let ageContainer = UIView()
        ageContainer.backgroundColor = .white
        ageContainer.layer.borderWidth = 1
        ageContainer.layer.borderColor = UIColor.systemGray5.cgColor
        ageContainer.layer.cornerRadius = 4
        ageContainer.translatesAutoresizingMaskIntoConstraints = false
        
        let ageLabel = UILabel()
        ageLabel.text = "Возраст"
        ageLabel.textColor = .gray
        ageLabel.font = UIFont.systemFont(ofSize: 14)
        ageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let ageField = UITextField()
        ageField.placeholder = "Возраст"
        ageField.keyboardType = .numberPad
        ageField.font = UIFont.systemFont(ofSize: 16)
        ageField.translatesAutoresizingMaskIntoConstraints = false
        ageField.delegate = self
        
        let removeButton = UIButton(type: .system)
        removeButton.setTitle("Удалить", for: .normal)
        removeButton.setTitleColor(.systemBlue, for: .normal)
        removeButton.translatesAutoresizingMaskIntoConstraints = false
        removeButton.addTarget(self, action: #selector(removeChild(_:)), for: .touchUpInside)
        
        nameContainer.addSubview(nameLabel)
        nameContainer.addSubview(nameField)
        
        ageContainer.addSubview(ageLabel)
        ageContainer.addSubview(ageField)
        
        childView.addSubview(nameContainer)
        childView.addSubview(ageContainer)
        childView.addSubview(removeButton)
        
        NSLayoutConstraint.activate([
            nameContainer.topAnchor.constraint(equalTo: childView.topAnchor),
            nameContainer.leadingAnchor.constraint(equalTo: childView.leadingAnchor),
            nameContainer.trailingAnchor.constraint(equalTo: childView.trailingAnchor, constant: -100),
            
            nameLabel.topAnchor.constraint(equalTo: nameContainer.topAnchor, constant: 10),
            nameLabel.leadingAnchor.constraint(equalTo: nameContainer.leadingAnchor, constant: 16),
            nameLabel.trailingAnchor.constraint(equalTo: nameContainer.trailingAnchor, constant: -16),
            
            nameField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 4),
            nameField.leadingAnchor.constraint(equalTo: nameContainer.leadingAnchor, constant: 16),
            nameField.trailingAnchor.constraint(equalTo: nameContainer.trailingAnchor, constant: -16),
            nameField.bottomAnchor.constraint(equalTo: nameContainer.bottomAnchor, constant: -10),
            
            ageContainer.topAnchor.constraint(equalTo: nameContainer.bottomAnchor, constant: 10),
            ageContainer.leadingAnchor.constraint(equalTo: childView.leadingAnchor),
            ageContainer.trailingAnchor.constraint(equalTo: childView.trailingAnchor, constant: -100),
            ageContainer.bottomAnchor.constraint(equalTo: childView.bottomAnchor),
            
            ageLabel.topAnchor.constraint(equalTo: ageContainer.topAnchor, constant: 10),
            ageLabel.leadingAnchor.constraint(equalTo: ageContainer.leadingAnchor, constant: 16),
            ageLabel.trailingAnchor.constraint(equalTo: ageContainer.trailingAnchor, constant: -16),
            
            ageField.topAnchor.constraint(equalTo: ageLabel.bottomAnchor, constant: 4),
            ageField.leadingAnchor.constraint(equalTo: ageContainer.leadingAnchor, constant: 16),
            ageField.trailingAnchor.constraint(equalTo: ageContainer.trailingAnchor, constant: -16),
            ageField.bottomAnchor.constraint(equalTo: ageContainer.bottomAnchor, constant: -10),
            
            removeButton.topAnchor.constraint(equalTo: childView.topAnchor, constant: 10),
            removeButton.leadingAnchor.constraint(equalTo: nameContainer.trailingAnchor, constant: 10),
            removeButton.trailingAnchor.constraint(equalTo: childView.trailingAnchor)
        ])
        
        return childView
    }
}
