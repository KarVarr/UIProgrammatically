//
//  ConfigureTextField + Ext.swift
//  AboutMeAlef
//
//  Created by Karen Vardanian on 01.03.2025.
//

import UIKit

extension ViewController {
    func configureTextField() {
        nameTextField.customTextField.placeholder = Helper.Strings.nameTextField
        nameTextField.customTextField.font = UIFont.systemFont(ofSize: 16)
        
        ageTextField.customTextField.placeholder = Helper.Strings.ageTextField
        ageTextField.customTextField.keyboardType = .numberPad
        ageTextField.customTextField.font = UIFont.systemFont(ofSize: 16)
    }
}

