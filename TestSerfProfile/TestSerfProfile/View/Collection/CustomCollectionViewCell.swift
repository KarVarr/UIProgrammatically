//
//  CustomCollectionViewCell.swift
//  TestSerfProfile
//
//  Created by Karen Vardanian on 01.08.2023.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    let skill = CustomLabelView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
        settings()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        contentView.addSubview(skill.labelView)
    }
    
    private func settings() {
        skill.labelView.font = Helper.Fonts.SFProTextRegular(with: 14)
    }
    
    private func layout() {
        NSLayoutConstraint.activate([
//            skill.labelView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
//            skill.labelView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            skill.labelView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            skill.labelView.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 12),
            skill.labelView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            skill.labelView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
        ])
    }
    
    
}
