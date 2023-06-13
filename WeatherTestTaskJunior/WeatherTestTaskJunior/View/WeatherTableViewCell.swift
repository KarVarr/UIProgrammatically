//
//  WeatherTableViewCell.swift
//  WeatherTestTaskJunior
//
//  Created by Karen Vardanian on 13.06.2023.
//

import UIKit

class WeatherTableViewCell: UITableViewCell {
    
    let tempLabel = CustomLabel()
    let cityNameLabel = CustomLabel()
    let weatherDescriptionLabel = CustomLabel()
    let verticalStack = CustomStackView()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init coder: has not been implemented")
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: Helper.String.cellKey)
        
        addView()
        setting()
        layout()
    }
    
    func addView() {
        contentView.addSubview(tempLabel.label)
        verticalStack.stackView.addArrangedSubview(cityNameLabel.label)
        verticalStack.stackView.addArrangedSubview(weatherDescriptionLabel.label)
        contentView.addSubview(verticalStack.stackView)
    }
    
    func setting() {
        verticalStack.stackView.axis = .vertical
        verticalStack.stackView.alignment = .leading
    }
    
    func layout() {
        let temp = tempLabel.label
        let vStack = verticalStack.stackView
        NSLayoutConstraint.activate([
            vStack.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            vStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            vStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            
            temp.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            temp.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10)
            
        ])
    }
    
}
