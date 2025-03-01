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
            titleLabel,
            nameLabel,
            nameTextField,
            nameContainerView,
            ageLabel,
            ageTextField,
            ageContainerView,
            childrenHeaderStack,
            childrenLabel,
            addChildButton,
            childrenStackView,
            clearButton
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
