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
        scrollView.addSubview(contentView)
        
        nameContainerView.addSubview(namelabel.customLabel)
        nameContainerView.addSubview(nameTextField.customTextField)
        ageContainerView.addSubview(ageLabel.customLabel)
        ageContainerView.addSubview(ageTextField.customTextField)
        
        childrenHeaderStack.addArrangedSubview(childrenLabel.customLabel)
        childrenHeaderStack.addArrangedSubview(addChildButton.customButton)
        
        [
            titleLabel.customLabel,
            nameContainerView.customUIView,
            ageContainerView.customUIView,
            childrenHeaderStack.customStackView,
            childrenStackView,
            clearButton.customButton
        ].forEach {
            contentView.addSubview($0)
        }
    }
}
