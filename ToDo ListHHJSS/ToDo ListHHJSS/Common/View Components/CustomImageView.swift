//
//  CustomImageView.swift
//  ToDo ListHHJSS
//
//  Created by Karen Vardanian on 30.01.2025.
//

import UIKit

class CustomImageView {
    let customImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
}
