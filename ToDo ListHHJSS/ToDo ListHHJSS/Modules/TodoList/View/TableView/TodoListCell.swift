//
//  TodoListCell.swift
//  ToDo ListHHJSS
//
//  Created by Karen Vardanian on 29.01.2025.
//

import UIKit

class TodoListCell: UITableViewCell {
    let titleLabel = UILabel()
    let subtitleLabel = UILabel()
    let checkBoxImageView = UIImageView()
    let dateLabel = UILabel()
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        addViews()
        configureLabels()
        configureStacks()
        layoutCell()
    }
    
    private func addViews() {
        contentView.addSubview(titleLabel)
        contentView.addSubview(subtitleLabel)
        contentView.addSubview(checkBoxImageView)
        contentView.addSubview(dateLabel)
    }
    
    private func configureLabels() {
        
    }
    
    private func configureStacks() {
        
    }
    
    private func layoutCell() {
        NSLayoutConstraint.activate([
            
        ])
    }
    
    
}
