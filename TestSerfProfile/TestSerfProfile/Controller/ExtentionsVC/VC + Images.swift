//
//  VC + Images.swift
//  TestSerfProfile
//
//  Created by Karen Vardanian on 01.08.2023.
//

import UIKit

extension ViewController {
     func settingsForImages() {
        mainImage.imageView.image = UIImage(named: "Karen")
        let resizeImage = mainImage.imageView.image?.resized(to: CGSize(width: 120, height: 120))
        mainImage.imageView.image = resizeImage
        if let imageWidth = resizeImage?.size.width {
            mainImage.imageView.layer.cornerRadius = imageWidth / 2.0
        } else {
            mainImage.imageView.layer.cornerRadius = 0.0
        }
        
        cityImage.imageView.image = UIImage(named: "Location")
    }
}
