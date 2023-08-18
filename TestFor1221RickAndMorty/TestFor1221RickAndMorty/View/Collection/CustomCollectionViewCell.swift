//
//  CustomCollectionViewCell.swift
//  TestFor1221RickAndMorty
//
//  Created by Karen Vardanian on 18.08.2023.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    let characterImage = CustomImageView()
    let nameLabel = CustomLabelView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        settings()
        addViews()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        contentView.addSubview(characterImage.customImage)
        contentView.addSubview(nameLabel.labelView)
    }
    
    private func settings() {
        characterImage.customImage.image = UIImage(systemName: "highlighter")
        nameLabel.labelView.text = "Rick Sanchez"
        nameLabel.labelView.textColor = Helper.Colors.whiteColor
        nameLabel.labelView.font = Helper.Fonts.AppleSDGothicNeoBold(with: 17)
        
        characterImage.customImage.layer.borderWidth = 1
        characterImage.customImage.layer.borderColor = UIColor.red.cgColor
        characterImage.customImage.layer.cornerRadius = 10
        
    }
    
    private func layout() {
        let image = characterImage.customImage
        let name = nameLabel.labelView
        
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            image.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            image.widthAnchor.constraint(equalToConstant: 140),
            image.heightAnchor.constraint(equalToConstant: 140),
            
            name.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 16),
            name.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
            
            name.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
        ])
    }
}
