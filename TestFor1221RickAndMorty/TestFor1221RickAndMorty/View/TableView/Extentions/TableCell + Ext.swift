//
//  TableCell + Ext.swift
//  TestFor1221RickAndMorty
//
//  Created by Karen Vardanian on 20.08.2023.
//

import UIKit
 
extension CustomTableViewCell {
     func settingsForLabels() {
        episodeName.labelView.font = Helper.Fonts.AppleSDGothicSemiBold(with: 17)
        episodeName.labelView.textColor = Helper.Colors.whiteColor
        
        episodeSeason.labelView.font = Helper.Fonts.AppleSDGothicSemiBold(with: 13)
        episodeSeason.labelView.textColor = Helper.Colors.greenColor
        
        episodeDate.labelView.font = Helper.Fonts.AppleSDGothicSemiBold(with: 12)
        episodeDate.labelView.textColor = Helper.Colors.lightGrayColor
        
        originName.labelView.font = Helper.Fonts.AppleSDGothicSemiBold(with: 17)
        originName.labelView.textColor = Helper.Colors.whiteColor
        
        originType.labelView.font = Helper.Fonts.AppleSDGothicSemiBold(with: 13)
        originType.labelView.textColor = Helper.Colors.greenColor
        
        infoGenderLabel.labelView.font = Helper.Fonts.AppleSDGothicSemiBold(with: 16)
        infoTypeLabel.labelView.font = Helper.Fonts.AppleSDGothicSemiBold(with: 16)
        infoSpeciesLabel.labelView.font = Helper.Fonts.AppleSDGothicSemiBold(with: 16)
        infoTypeLabel.labelView.textColor = Helper.Colors.grayColor
        infoGenderLabel.labelView.textColor = Helper.Colors.grayColor
        infoSpeciesLabel.labelView.textColor = Helper.Colors.grayColor
        
        infoType.labelView.textColor = Helper.Colors.whiteColor
        infoGender.labelView.textColor = Helper.Colors.whiteColor
        infoSpecies.labelView.textColor = Helper.Colors.whiteColor
        infoType.labelView.font = Helper.Fonts.AppleSDGothicSemiBold(with: 16)
        infoGender.labelView.font = Helper.Fonts.AppleSDGothicSemiBold(with: 16)
        infoSpecies.labelView.font = Helper.Fonts.AppleSDGothicSemiBold(with: 16)
        
        infoSpeciesLabel.labelView.text = "Species:"
        infoTypeLabel.labelView.text = "Type:"
        infoGenderLabel.labelView.text = "Gender:"
    }
    
     func settingForImages() {
        originImage.customImage.image = UIImage(named: "planetImage")
    }
    
     func layoutForInfo() {
        NSLayoutConstraint.activate([
            infoSpeciesLabel.labelView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 24),
            infoSpeciesLabel.labelView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            
            infoTypeLabel.labelView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            infoTypeLabel.labelView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            
            infoGenderLabel.labelView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -24),
            infoGenderLabel.labelView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            
            infoSpecies.labelView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 24),
            infoSpecies.labelView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            
            infoType.labelView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            infoType.labelView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            
            infoGender.labelView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -24),
            infoGender.labelView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24)
            
        ])
    }
    
     func layoutForOrigin() {
        NSLayoutConstraint.activate([
            originViewForImage.custom.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            originViewForImage.custom.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            originViewForImage.custom.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
            originViewForImage.custom.widthAnchor.constraint(equalToConstant: 64),
            originViewForImage.custom.heightAnchor.constraint(equalToConstant: 64),
            
            originImage.customImage.centerYAnchor.constraint(equalTo: originViewForImage.custom.centerYAnchor),
            originImage.customImage.centerXAnchor.constraint(equalTo: originViewForImage.custom.centerXAnchor),
            
            originName.labelView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 24),
            originName.labelView.leadingAnchor.constraint(equalTo: originViewForImage.custom.trailingAnchor, constant: 16),
            
            originType.labelView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -24),
            originType.labelView.leadingAnchor.constraint(equalTo: originViewForImage.custom.trailingAnchor, constant: 16),
        ])
    }
    
     func layoutForEpisodes() {
        NSLayoutConstraint.activate([
            episodeName.labelView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 24),
            episodeName.labelView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            
            episodeSeason.labelView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -24),
            episodeSeason.labelView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            
            episodeDate.labelView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -24),
            episodeDate.labelView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24)
        ])
    }
}
