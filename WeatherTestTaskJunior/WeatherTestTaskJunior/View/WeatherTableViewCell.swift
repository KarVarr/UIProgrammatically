//
//  WeatherTableViewCell.swift
//  WeatherTestTaskJunior
//
//  Created by Karen Vardanian on 13.06.2023.
//

import UIKit

class WeatherTableViewCell: UITableViewCell {
    
    
    
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
        
    }
    
}
