//
//  ConfigureUIView + Ext.swift
//  AboutMeAlef
//
//  Created by Karen Vardanian on 01.03.2025.
//

import UIKit

extension ViewController {
    func configureUIView () {
        nameContainerView.customUIView.backgroundColor = .white
        nameContainerView.customUIView.layer.borderWidth = 1
        nameContainerView.customUIView.layer.borderColor = UIColor.systemGray5.cgColor
        nameContainerView.customUIView.layer.cornerRadius = 4
        
        ageContainerView.customUIView.backgroundColor = .white
        ageContainerView.customUIView.layer.borderWidth = 1
        ageContainerView.customUIView.layer.borderColor = UIColor.systemGray5.cgColor
        ageContainerView.customUIView.layer.cornerRadius = 4
    }
}
