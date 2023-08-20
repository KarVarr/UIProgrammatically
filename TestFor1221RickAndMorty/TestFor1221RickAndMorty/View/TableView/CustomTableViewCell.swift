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
    
}


