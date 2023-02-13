//
//  Titles.swift
//  TemperatureСonversion
//
//  Created by Karen Vardanian on 13.02.2023.
//

import UIKit

class Titles: UIView {
    let title = UILabel()
    


    func configure(with text: String) {
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = text.uppercased()
        title.textColor = .gray
    }
}
