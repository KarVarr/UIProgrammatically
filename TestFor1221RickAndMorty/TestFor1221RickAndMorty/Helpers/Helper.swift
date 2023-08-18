//
//  Helper.swift
//  TestFor1221RickAndMorty
//
//  Created by Karen Vardanian on 17.08.2023.
//

import UIKit

enum Helper {
    //MARK: - KEYS
    enum Keys {
        static let collectionCellKey = "Cell"
    }
    //MARK: - STRINGS
    enum Strings {
        static let title = "Characters"
    }
    //MARK: - COLORS
    enum Colors {
        static let whiteColor = UIColor(hexString: "#FFFFFF")
        static let mainBlackColor = UIColor(hexString: "#040C1E")
        static let cellBlackColor = UIColor(hexString: "#262A38")
    }
    //MARK: - FONTS
    enum Fonts {
        static func AppleSDGothicNeoBold(with size: CGFloat) -> UIFont {
            UIFont(name: "AppleSDGothicNeo-Bold", size: size) ?? UIFont()
        }
    }
}
