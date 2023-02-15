//
//  TextField.swift
//  TemperatureСonversion
//
//  Created by Karen Vardanian on 13.02.2023.
//

import UIKit

class TextField: UIView {
    
    
    var textField : UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "0"
        textField.borderStyle = .roundedRect
        textField.autocorrectionType = .no
        textField.keyboardType = .numberPad
        textField.clearButtonMode = .whileEditing
        textField.contentVerticalAlignment = .center
       
        return textField
    }()
    

    
    
    
}
