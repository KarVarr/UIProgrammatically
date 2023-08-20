//
//  CustomTableViewCell.swift
//  TestFor1221RickAndMorty
//
//  Created by Karen Vardanian on 19.08.2023.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    let spacingView = UIView()
    
    let infoSpeciesLabel = CustomLabelView()
    let infoTypeLabel = CustomLabelView()
    let infoGenderLabel = CustomLabelView()
    let infoSpecies = CustomLabelView()
    let infoType = CustomLabelView()
    let infoGender = CustomLabelView()
    
    let episodeName = CustomLabelView()
    let episodeDate = CustomLabelView()
    let episodeSeason = CustomLabelView()
    
    let originViewForImage = CustomUIView()
    let originImage = CustomImageView()
    let originName = CustomLabelView()
    let originType = CustomLabelView()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        spacingView.frame = spacingView.frame.inset(by: UIEdgeInsets(top: 8, left: 0, bottom: 8, right: 0))
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addView()
        settingsForLabels()
        settingForImages()
        
        
        switch reuseIdentifier {
        case Helper.Keys.tableInfoCell:
            originImage.customImage.isHidden = true
            layoutForInfo()
        case Helper.Keys.tableOriginCell:
            infoType.labelView.isHidden = true
            infoGender.labelView.isHidden = true
            infoSpecies.labelView.isHidden = true
            infoTypeLabel.labelView.isHidden = true
            infoGenderLabel.labelView.isHidden = true
            infoSpeciesLabel.labelView.isHidden = true
            layoutForOrigin()
            
        case Helper.Keys.tableEpisodeCell:
            originImage.customImage.isHidden = true
            infoType.labelView.isHidden = true
            infoGender.labelView.isHidden = true
            infoSpecies.labelView.isHidden = true
            infoTypeLabel.labelView.isHidden = true
            infoGenderLabel.labelView.isHidden = true
            infoSpeciesLabel.labelView.isHidden = true
            layoutForEpisodes()
            
        default:
            break
        }
        
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func addView() {
        contentView.addSubview(episodeName.labelView)
        contentView.addSubview(episodeDate.labelView)
        contentView.addSubview(episodeSeason.labelView)
        
        contentView.addSubview(originViewForImage.custom)
        originViewForImage.custom.addSubview(originImage.customImage)
        contentView.addSubview(originName.labelView)
        contentView.addSubview(originType.labelView)
        
        contentView.addSubview(infoSpeciesLabel.labelView)
        contentView.addSubview(infoTypeLabel.labelView)
        contentView.addSubview(infoGenderLabel.labelView)
        contentView.addSubview(infoSpecies.labelView)
        contentView.addSubview(infoType.labelView)
        contentView.addSubview(infoGender.labelView)
    }
    
    private func settingsForLabels() {
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
    
    private func settingForImages() {
        originImage.customImage.image = UIImage(named: "planetImage")
    }
    
    private func layoutForInfo() {
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
    
    private func layoutForOrigin() {
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
    
    private func layoutForEpisodes() {
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
