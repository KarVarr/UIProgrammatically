//
//  Helper.swift
//  AboutMeAlef
//
//  Created by Karen Vardanian on 01.03.2025.
//

import UIKit

enum Helper {
    //MARK: - FONTS
    enum Fonts {
        private static func dynamicFontSize(_ fontSize: CGFloat) -> CGFloat {
            let screenWidth = UIScreen.main.bounds.size.width
            let calculatedFontSize = screenWidth / 375 * fontSize
            return calculatedFontSize
        }
    }
    
    //MARK: - STRINGS
    enum Strings {
        static let titleLabel = "Персональные данные"
        static let namelabel = "Имя"
        static let ageLabel = "Возраст"
        static let childrenLabel = "Дети (макс. 5)"
        static let nameTextField = "Имя"
        static let ageTextField = "Возраст"
    }
}
