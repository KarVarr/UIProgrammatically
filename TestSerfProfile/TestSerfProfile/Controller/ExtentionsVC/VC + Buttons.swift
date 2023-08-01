//
//  VC + Buttons.swift
//  TestSerfProfile
//
//  Created by Karen Vardanian on 01.08.2023.
//

import UIKit

extension ViewController {
     func settingsForButton() {
        editButton.button.setImage(UIImage(named: "Pen"), for: .normal)
        editButton.button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)    }
    
    @objc func buttonPressed () {
        buttonIsPressed.toggle()
        let imageName = buttonIsPressed ? "Done" : "Pen"
        editButton.button.setImage(UIImage(named: imageName), for: .normal)
        
        if buttonIsPressed {
            if !tags.arrayOfTags.contains(where: { $0.hasSuffix(" X") }) {
                tags.arrayOfTags = tags.arrayOfTags.map { $0 + " X" }
                tags.arrayOfTags.append("+")
            }
        } else {
            tags.arrayOfTags = tags.arrayOfTags.map { $0.replacingOccurrences(of: " X", with: "") }
            tags.arrayOfTags.removeAll(where: { $0 == "+" })
        }
        
        collectionView.collection.reloadData()
    }
}
