//
//  ConfigureStacks.swift
//  AboutMeAlef
//
//  Created by Karen Vardanian on 01.03.2025.
//

import UIKit

extension ViewController {
    func configureStack() {
        childrenHeaderStack.customStackView.axis = .horizontal
        childrenHeaderStack.customStackView.alignment = .center
        childrenHeaderStack.customStackView.distribution = .equalSpacing
        
        childrenStackView.customStackView.axis = .vertical
        childrenStackView.customStackView.spacing = 12
        childrenStackView.customStackView.alignment = .fill
        childrenStackView.customStackView.distribution = .fill
    }
}
