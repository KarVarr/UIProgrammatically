//
//  ButtonTemperature.swift
//  WeatherUIProgrammarically
//
//  Created by Karen Vardanian on 24.02.2023.
//

import UIKit

struct ButtonTemperature {
    let button: UIButton = {
       let btn = UIButton()
        btn.setTitle("Click", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = .blue
        btn.layer.cornerRadius = 10
        return btn
    }()
}
