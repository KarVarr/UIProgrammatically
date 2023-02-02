//
//  SecondaryButton.swift
//  WorkoutApp
//
//  Created by Karen Vardanian on 02.02.2023.
//

import UIKit

final class SecondaryButton: UIButton {
    
    private let label = UILabel()
    private let iconView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
        layoutViews()
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


private extension SecondaryButton {
    func addViews() {
        addSubview(label)
        addSubview(iconView)
    }
    func layoutViews() {}
    func configure() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = Resources.Colors.active
        label.textAlignment = .center
        label.font = Resources.Fonts.helveticaRegular(with: 17)
        
        iconView.translatesAutoresizingMaskIntoConstraints = false
    }
}
