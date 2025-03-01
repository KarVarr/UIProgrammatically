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
        
        nameContainerView.addSubview(nameLabel)
        nameContainerView.addSubview(nameTextField)
        ageContainerView.addSubview(ageLabel)
        ageContainerView.addSubview(ageTextField)
        
        childrenHeaderStack.addArrangedSubview(childrenLabel)
        childrenHeaderStack.addArrangedSubview(addChildButton)
        
        [titleLabel, nameContainerView, ageContainerView, childrenHeaderStack,
         childrenStackView, clearButton].forEach {
            contentView.addSubview($0)
        }
    }
}
