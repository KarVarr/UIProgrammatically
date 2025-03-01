//
//  ConfigureLabels + Ext.swift
//  AboutMeAlef
//
//  Created by Karen Vardanian on 01.03.2025.
//

import UIKit

extension ViewController {
    func configureLabels() {
        titleLabel.customLabel.text = Helper.Strings.titleLabel
        titleLabel.customLabel.font = UIFont.systemFont(ofSize: 22, weight: .medium)
        
        nameLabel.customLabel.text = Helper.Strings.namelabel
        nameLabel.customLabel.textColor = .gray
        nameLabel.customLabel.font = UIFont.systemFont(ofSize: 14)
        
        ageLabel.customLabel.text = Helper.Strings.ageLabel
        ageLabel.customLabel.textColor = .gray
        ageLabel.customLabel.font = UIFont.systemFont(ofSize: 14)
        
        childrenLabel.customLabel.text = Helper.Strings.childrenLabel
        childrenLabel.customLabel.font = UIFont.systemFont(ofSize: 18, weight: .medium)
    }
}
