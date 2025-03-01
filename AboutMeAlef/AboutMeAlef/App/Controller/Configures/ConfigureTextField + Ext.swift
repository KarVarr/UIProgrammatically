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
        ageTextField.customTextField.delegate = self
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let currentText = textField.text ?? ""
        
        guard let newText = (currentText as NSString).replacingCharacters(in: range, with: string) as String? else {
            return false
        }
        
        if let newValue = Int(newText), newValue <= 99 {
            return true
        } else if newText.isEmpty {
            return true
        } else {
            textField.text = "99"
            return false
        }
    }
}

