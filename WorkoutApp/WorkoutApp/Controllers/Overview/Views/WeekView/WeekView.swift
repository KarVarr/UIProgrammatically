//
//  WeekView.swift
//  WorkoutApp
//
//  Created by Karen Vardanian on 05.02.2023.
//

import UIKit

final class WeekView: BaseView {
    private var stackView = UIStackView()
}

extension WeekView {
    override func setupViews() {
        super.setupViews()
        
        setupViews(stackView)
        
    }
    
    override func constaintViews() {
        super.constaintViews()
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        backgroundColor = .red
        
        stackView.spacing = 7
        stackView.distribution = .fillEqually
    }
}
