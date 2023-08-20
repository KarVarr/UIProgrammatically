//
//  CustomTableViewCell.swift
//  TestFor1221RickAndMorty
//
//  Created by Karen Vardanian on 19.08.2023.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
     let spacingView = UIView()
    
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
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
