//
//  CustomButtonView.swift
//  TestSerfProfile
//
//  Created by Karen Vardanian on 01.08.2023.
//

import UIKit

class CustomButtonView {
    let button: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = Helper.Colors.textBlackColor
        
        return button
    }()
}
