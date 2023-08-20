//
//  CustomUIView.swift
//  TestFor1221RickAndMorty
//
//  Created by Karen Vardanian on 20.08.2023.
//

import UIKit

class CustomUIView {
    let custom: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = Helper.Colors.imageViewColor
        view.layer.cornerRadius = 10
        return view
    }()
}
