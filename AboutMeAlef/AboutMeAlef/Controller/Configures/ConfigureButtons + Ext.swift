//
//  ConfigureButtons + Ext.swift
//  AboutMeAlef
//
//  Created by Karen Vardanian on 01.03.2025.
//

import UIKit

extension ViewController {
    
    func configureButtons() {
        addChildButton.customButton.setTitle(Helper.Strings.addChildButton, for: .normal)
        addChildButton.customButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        addChildButton.customButton.setTitleColor(.systemBlue, for: .normal)
        addChildButton.customButton.layer.borderColor = UIColor.systemBlue.cgColor
        addChildButton.customButton.layer.borderWidth = 1
        addChildButton.customButton.layer.cornerRadius = 20
        addChildButton.customButton.setImage(UIImage(systemName: "plus"), for: .normal)
        addChildButton.customButton.tintColor = .systemBlue
        if #available(iOS 15.0, *) {
            var config = UIButton.Configuration.bordered()
            config.imagePadding = 8
            config.imagePlacement = .leading
            config.baseBackgroundColor = .systemBackground
            addChildButton.customButton.configuration = config
        } else {
            addChildButton.customButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -8, bottom: 0, right: 0)
        }
        addChildButton.customButton.addTarget(self, action: #selector(addChildView), for: .touchUpInside)
        
        
        clearButton.customButton.setTitle(Helper.Strings.clearButton, for: .normal)
        clearButton.customButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        clearButton.customButton.setTitleColor(.red, for: .normal)
        clearButton.customButton.layer.borderWidth = 1
        clearButton.customButton.layer.borderColor = UIColor.red.cgColor
        clearButton.customButton.layer.cornerRadius = 20
        clearButton.customButton.addTarget(self, action: #selector(showClearAlert), for: .touchUpInside)
    }
}
