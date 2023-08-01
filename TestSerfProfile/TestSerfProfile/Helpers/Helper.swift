//
//  Helper.swift
//  TestSerfProfile
//
//  Created by Karen Vardanian on 01.08.2023.
//

import UIKit

class Helper {
    //MARK: - Keys
    enum Keys {
        static let collectionCellKey = "Cell"
    }
    //MARK: - Strings
    enum Strings {
        static let navTitle = "Профиль"
        static let nameLabel = "Вардянян Карен Робертович"
        static let experienceLabel = "iOS-разработчик, опыт 10 месяцев"
        static let cityLabel = "Ереван"
        static let myExpLabel = "Мои навыки"
        static let aboutMySelfTitleLabel = "О себе"
        static let aboutMySelfTextLabel = "Учусь iOS разработке самостоятельно по различным курсам и книгам."
        
        enum StringForAlert {
            static let title = "Добавление навыка"
            static let message = "Введите название навыка которым вы владеете"
            static let placeholder = "Введите название"
            static let add = "Добавить"
            static let cancel = "Отменить"
        }
    }
    
    //MARK: - Fonts
    enum Fonts {
        static func SFProTextRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "SFProDisplay-Regular", size: size) ?? UIFont.systemFont(ofSize: size)
        }
        static func SFProTextMedium(with size: CGFloat) -> UIFont {
            UIFont(name: "SFProDisplay-Medium", size: size) ?? UIFont.systemFont(ofSize: size)
        }
        static func SFProTextBold(with size: CGFloat) -> UIFont {
            UIFont(name: "SFProDisplay-Bold", size: size) ?? UIFont.boldSystemFont(ofSize: size)
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
