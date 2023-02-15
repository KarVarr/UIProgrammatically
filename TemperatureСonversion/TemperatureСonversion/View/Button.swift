//
//  Button.swift
//  TemperatureСonversion
//
//  Created by Karen Vardanian on 15.02.2023.
//

import UIKit

class Button {
    var button: UIButton = {
       let button = UIButton()
        button.setTitle("Result", for: .normal)
        button.backgroundColor = .green
        button.setTitleColor(.black, for: .normal)
        
        return button
    }()
}
