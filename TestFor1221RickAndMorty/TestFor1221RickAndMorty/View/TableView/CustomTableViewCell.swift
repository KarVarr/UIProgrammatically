//
//  CustomTableViewCell.swift
//  TestFor1221RickAndMorty
//
//  Created by Karen Vardanian on 19.08.2023.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
     let spacingView = UIView()
    
    let episodeName = CustomLabelView()
    let episodeDate = CustomLabelView()
    let episodeSeason = CustomLabelView()
    
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
        super.init(style: style, reuseIdentifier: Helper.Keys.tableCellKey)
        
        addView()
        settingsForLabels()
        layoutForOrigin()
        layoutForEpisodes()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func addView() {
        contentView.addSubview(episodeName.labelView)
        contentView.addSubview(episodeDate.labelView)
        contentView.addSubview(episodeSeason.labelView)
        
        contentView.addSubview(originName.labelView)
        contentView.addSubview(originType.labelView)
    }
    
    private func settingsForLabels() {
        episodeName.labelView.font = Helper.Fonts.AppleSDGothicSemiBold(with: 17)
        episodeName.labelView.textColor = Helper.Colors.whiteColor
        
        episodeSeason.labelView.font = Helper.Fonts.AppleSDGothicSemiBold(with: 13)
        episodeSeason.labelView.textColor = Helper.Colors.greenColor
        
        episodeDate.labelView.font = Helper.Fonts.AppleSDGothicSemiBold(with: 12)
        episodeDate.labelView.textColor = Helper.Colors.lightGrayColor
        
        
    }
    
    private func layoutForOrigin() {
        NSLayoutConstraint.activate([
            originName.labelView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            originName.labelView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            
            originType.labelView.topAnchor.constraint(equalTo: originName.labelView.bottomAnchor, constant: 8),
            originType.labelView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
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
