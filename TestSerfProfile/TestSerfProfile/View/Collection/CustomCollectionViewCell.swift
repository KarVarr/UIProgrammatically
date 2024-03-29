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
        skill.labelView.lineBreakMode = .byTruncatingTail
        skill.labelView.numberOfLines = 1
        skill.labelView.preferredMaxLayoutWidth = 32
        skill.labelView.sizeToFit()
    }
    
    private func layout() {
        let skill = skill.labelView
        
        
        NSLayoutConstraint.activate([
            skill.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            skill.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 12),
            skill.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            skill.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
            
        ])
    }
    
    
}
