//
//  Temperature.swift
//  WeatherUIProgrammarically
//
//  Created by Karen Vardanian on 24.02.2023.
//

import UIKit

struct Temperature {
    let label: UILabel = {
        let label = UILabel()
        label.text = "temp"
        label.textColor = .purple
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
}
