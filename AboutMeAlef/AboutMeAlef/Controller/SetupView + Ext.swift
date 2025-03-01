//
//  SetupView + Ext.swift
//  AboutMeAlef
//
//  Created by Karen Vardanian on 01.03.2025.
//

import UIKit

extension ViewController {
    func setupLayout() {
        [
            scrollView,
            contentView.customUIView,
            titleLabel.customLabel,
            nameLabel.customLabel,
            nameTextField.customTextField,
            nameContainerView.customUIView,
            ageLabel.customLabel,
            ageTextField.customTextField,
            ageContainerView.customUIView,
            childrenHeaderStack.customStackView,
            childrenLabel.customLabel,
            addChildButton.customButton,
            childrenStackView.customStackView,
            clearButton.customButton
        ].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        addViews()
        
        
        
        mainLayoutView()
    }
}
