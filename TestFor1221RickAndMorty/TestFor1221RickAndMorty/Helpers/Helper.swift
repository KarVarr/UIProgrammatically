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
        static let collectionCellKey = "CellForCollectionView"
        static let detailCollectionCellKey = "DetailCellForCollectionView"
        static let tableCellKey = "CellForTableView"
        static let tableInfoCell = "InfoCell"
        static let tableOriginCell = "OriginCell"
        static let tableEpisodeCell = "EpisodeCell"
    }
    //MARK: - STRINGS
    enum Strings {
        static let title = "Characters"
    }
    //MARK: - COLORS
    enum Colors {
        static let mainBlackColor = UIColor(hexString: "#040C1E")
        static let cellBlackColor = UIColor(hexString: "#262A38")
        static let imageViewColor = UIColor(hexString: "#191C2A")
        static let grayColor = UIColor(hexString: "#C4C9CE")
        static let lightGrayColor = UIColor(hexString: "#93989C")
        static let whiteColor = UIColor(hexString: "#FFFFFF")
        static let greenColor = UIColor(hexString: "#47C60B")
        static let redColor = UIColor(hexString: "#FF0000")
        static let orangeColor = UIColor(hexString: "#FF8100")
    }
    //MARK: - FONTS
    enum Fonts {
        static func AppleSDGothicNeoBold(with size: CGFloat) -> UIFont {
            UIFont(name: "AppleSDGothicNeo-Bold", size: size) ?? UIFont()
        }
        static func AppleSDGothicSemiBold(with size: CGFloat) -> UIFont {
            UIFont(name: "AppleSDGothicNeo-SemiBold", size: size) ?? UIFont()
        }
        static func GillSansSemiBold(with size: CGFloat) -> UIFont {
            UIFont(name: "GillSans-SemiBold", size: size) ?? UIFont()
        }
    }
}
