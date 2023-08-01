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
    }
    
    //MARK: - Fonts
        enum Fonts {
            static func helveticaRegular(with size: CGFloat) -> UIFont {
                UIFont(name: "Helvetica", size: size) ?? UIFont()
            }
            static func helveticaBold(with size: CGFloat) -> UIFont {
                UIFont(name: "HelveticaNeue-Bold", size: size) ?? UIFont()
            }
        }
    
    //MARK: - Colors
    enum Colors {
        static let grayColor = UIColor(hexString: "#F3F3F5")
    }
}
