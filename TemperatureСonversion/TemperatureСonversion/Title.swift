//
//  Views.swift
//  TemperatureСonversion
//
//  Created by Karen Vardanian on 13.02.2023.
//

import UIKit

class Title {
    var label: UILabel
    
    internal init(label: UILabel) {
        self.label = label
    }
}

class Header: Title {
     let titleSegment: UILabel = {
       let label = UILabel()
         label.textColor = .gray
         label.textAlignment = .left
        return label
    }()
    
}

