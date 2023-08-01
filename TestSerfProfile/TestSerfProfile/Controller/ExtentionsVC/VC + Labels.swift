//
//  VC + Labels.swift
//  TestSerfProfile
//
//  Created by Karen Vardanian on 01.08.2023.
//

import UIKit


extension ViewController {
     func settingsForLabels() {
        textSettings(for: nameLabel.labelView, withText: Helper.Strings.nameLabel, fontForText: Helper.Fonts.SFProTextBold(with: 24), colorForText: Helper.Colors.textBlackColor, numberOfLines: 2, lineSpacing: 5.0, textAlignment: .center)
        
        textSettings(for: experienceLabel.labelView, withText: Helper.Strings.experienceLabel, fontForText: Helper.Fonts.SFProTextRegular(with: 14), colorForText: Helper.Colors.textGrayColor)
        
        textSettings(for: cityLabel.labelView, withText: Helper.Strings.cityLabel, fontForText: Helper.Fonts.SFProTextRegular(with: 14), colorForText: Helper.Colors.textGrayColor)
        
        textSettings(for: myExpLabel.labelView, withText: Helper.Strings.myExpLabel, fontForText: Helper.Fonts.SFProTextRegular(with: 16), colorForText: Helper.Colors.textBlackColor)
        
        textSettings(for: aboutMySelfTitleLabel.labelView, withText: Helper.Strings.aboutMySelfTitleLabel, fontForText: Helper.Fonts.SFProTextMedium(with: 16), colorForText: Helper.Colors.textBlackColor)
        
        textSettings(for: aboutMySelfTextLabel.labelView, withText: Helper.Strings.aboutMySelfTextLabel, fontForText: Helper.Fonts.SFProTextRegular(with: 14), colorForText: Helper.Colors.textBlackColor, numberOfLines: 0)
    }
    
    private func textSettings(for label: UILabel, withText text: String, fontForText font: UIFont, colorForText color: UIColor, numberOfLines: Int? = nil, lineSpacing: CGFloat? = nil, textAlignment: NSTextAlignment? = nil) {
        label.text = text
        label.font = font
        label.textColor = color
        
        if let numberOfLines = numberOfLines {
            label.numberOfLines = numberOfLines
        }
        
        if let lineSpacing = lineSpacing {
            label.setLineSpacing(lineSpacing: lineSpacing)
        }
        
        if let textAlignment = textAlignment {
            label.textAlignment = textAlignment
        }
    }
}
