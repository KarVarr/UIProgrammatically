//
//  LayoutView + Ext.swift
//  AboutMeAlef
//
//  Created by Karen Vardanian on 01.03.2025.
//

import UIKit

extension ViewController {
    func mainLayoutView() {
        let titleLabel = titleLabel.customLabel
        let nameLabel = nameLabel.customLabel
        let nameContainerView = nameContainerView.customUIView
        let nameTextField = nameTextField.customTextField
        let ageContainerView = ageContainerView.customUIView
        let ageLabel = ageLabel.customLabel
        let ageTextField = ageTextField.customTextField
        let childrenHeaderStack = childrenHeaderStack.customStackView
        let childrenStackView = childrenStackView.customStackView
        let addChildButton = addChildButton.customButton
        let clearButton = clearButton.customButton
        let contentView = contentView.customUIView
    
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            
            nameContainerView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            nameContainerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            nameContainerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            
            nameLabel.topAnchor.constraint(equalTo: nameContainerView.topAnchor, constant: 10),
            nameLabel.leadingAnchor.constraint(equalTo: nameContainerView.leadingAnchor, constant: 16),
            nameLabel.trailingAnchor.constraint(equalTo: nameContainerView.trailingAnchor, constant: -16),
            
            nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 4),
            nameTextField.leadingAnchor.constraint(equalTo: nameContainerView.leadingAnchor, constant: 16),
            nameTextField.trailingAnchor.constraint(equalTo: nameContainerView.trailingAnchor, constant: -16),
            nameTextField.bottomAnchor.constraint(equalTo: nameContainerView.bottomAnchor, constant: -10),
            
            ageContainerView.topAnchor.constraint(equalTo: nameContainerView.bottomAnchor, constant: 20),
            ageContainerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            ageContainerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            
            ageLabel.topAnchor.constraint(equalTo: ageContainerView.topAnchor, constant: 10),
            ageLabel.leadingAnchor.constraint(equalTo: ageContainerView.leadingAnchor, constant: 16),
            ageLabel.trailingAnchor.constraint(equalTo: ageContainerView.trailingAnchor, constant: -16),
            
            ageTextField.topAnchor.constraint(equalTo: ageLabel.bottomAnchor, constant: 4),
            ageTextField.leadingAnchor.constraint(equalTo: ageContainerView.leadingAnchor, constant: 16),
            ageTextField.trailingAnchor.constraint(equalTo: ageContainerView.trailingAnchor, constant: -16),
            ageTextField.bottomAnchor.constraint(equalTo: ageContainerView.bottomAnchor, constant: -10),
            
            childrenHeaderStack.topAnchor.constraint(equalTo: ageContainerView.bottomAnchor, constant: 30),
            childrenHeaderStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            childrenHeaderStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            
            addChildButton.heightAnchor.constraint(equalToConstant: 40),
            addChildButton.widthAnchor.constraint(equalToConstant: 220),
            
            childrenStackView.topAnchor.constraint(equalTo: childrenHeaderStack.bottomAnchor, constant: 20),
            childrenStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            childrenStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            
            clearButton.topAnchor.constraint(equalTo: childrenStackView.bottomAnchor, constant: 20),
            clearButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            clearButton.heightAnchor.constraint(equalToConstant: 40),
            clearButton.widthAnchor.constraint(equalToConstant: 200),
            clearButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20)
        ])
    }
}
