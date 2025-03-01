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
            contentView,
            titleLabel.customLabel,
            namelabel.customLabel,
            nameTextField.customTextField,
            nameContainerView.customUIView,
            ageLabel.customLabel,
            ageTextField.customTextField,
            ageContainerView.customUIView,
            childrenHeaderStack.customStackView,
            childrenLabel.customLabel,
            addChildButton.customButton,
            childrenStackView,
            clearButton.customButton
        ].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        addViews()
        
        childrenStackView.axis = .vertical
        childrenStackView.spacing = 12
        childrenStackView.alignment = .fill
        childrenStackView.distribution = .fill
        
        mainLayoutView()
    }
}
