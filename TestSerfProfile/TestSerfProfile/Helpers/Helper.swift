//
//  Helper.swift
//  TestSerfProfile
//
//  Created by Karen Vardanian on 01.08.2023.
//

import UIKit

class Helper {
    //MARK: - Strings
    enum Strings {
        static let navTitle = "Профиль"
        static let nameLabel = "Вардянян Карен Робертович"
        static let experienceLabel = "iOS-разработчик, опыт 10 месяцев"
        static let cityLabel = "Ереван"
        static let myExpLabel = "Мои навыки"
        static let aboutMySelfTitleLabel = "О себе"
        static let aboutMySelfTextLabel = "Experienced software engineer skilled in developing scalable and maintainable systems"
        
    }
    
    //MARK: - Fonts
        enum Fonts {
            static func helveticaRegular(with size: CGFloat) -> UIFont {
                UIFont(name: "Helvetica", size: size) ?? UIFont()
            }
            static func helveticaMedium(with size: CGFloat) -> UIFont {
                UIFont(name: "HelveticaNeue-Medium", size: size) ?? UIFont()
            }
            static func helveticaBold(with size: CGFloat) -> UIFont {
                UIFont(name: "HelveticaNeue-Bold", size: size) ?? UIFont()
            }
            
        }
    
    //MARK: - Colors
    enum Colors {
        static let whiteColor = UIColor(hexString: "#FFFFFF")
        static let grayColor = UIColor(hexString: "#F3F3F5")
        static let textGrayColor = UIColor(hexString: "#96959B")
        static let textBlackColor = UIColor(hexString: "#313131")
    }
}
