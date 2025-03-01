//
//  AddView + Ext.swift
//  AboutMeAlef
//
//  Created by Karen Vardanian on 01.03.2025.
//

import UIKit

extension ViewController {
    func addViews() {
        view.addSubview(scrollView)
        scrollView.addSubview(contentView.customUIView)
        
        nameContainerView.customUIView.addSubview(nameLabel.customLabel)
        nameContainerView.customUIView.addSubview(nameTextField.customTextField)
        ageContainerView.customUIView.addSubview(ageLabel.customLabel)
        ageContainerView.customUIView.addSubview(ageTextField.customTextField)
        
        childrenHeaderStack.customStackView.addArrangedSubview(childrenLabel.customLabel)
        childrenHeaderStack.customStackView.addArrangedSubview(addChildButton.customButton)
        
        [
            titleLabel.customLabel,
            nameContainerView.customUIView,
            ageContainerView.customUIView,
            childrenHeaderStack.customStackView,
            childrenStackView.customStackView,
            clearButton.customButton
        ].forEach {
            contentView.customUIView.addSubview($0)
        }
    }
}
