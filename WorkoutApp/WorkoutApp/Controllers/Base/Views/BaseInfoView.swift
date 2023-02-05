//
//  BaseInfoView.swift
//  WorkoutApp
//
//  Created by Karen Vardanian on 05.02.2023.
//

import UIKit

class BaseInfoView: BaseView {
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helveticaRegular(with: 13)
        label.textColor = R.Colors.inActive
        label.text = "hello"
        return label
    }()
    private let contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.borderColor = R.Colors.separator.cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 5
        return view
    }()
    
}





extension BaseInfoView {
    override func setupViews() {
        super.setupViews()
        
        setupViews(titleLabel)
        setupViews(contentView)
    }
    override func constaintViews() {
        super.constaintViews()
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            contentView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
        ])
    }
    override func configureAppearance() {
        super.configureAppearance()
        backgroundColor = .clear
    }
    
}
