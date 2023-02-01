//
//  Resources.swift
//  WorkoutApp
//
//  Created by Karen Vardanian on 01.02.2023.
//

import UIKit

enum Resources {
    //MARK: - Colors
    enum Colors {
        static var active = UIColor(hexString: "#437BFE")
        static var inActive = UIColor(hexString: "#929DA5")
        
        static var separator = UIColor(hexString: "#E8ECEF")
        
        static var titleGray = UIColor(hexString: "#545C77")
    }
    //MARK: - Strings
    enum Strings {
        enum TabBar {
            static var overview = "Overview"
            static var session = "Session"
            static var progress = "Progress"
            static var settings = "Settings"
        }
    }
    //MARK: - Images
    enum Images {
        enum TabBar {
            static var overview = UIImage(named: "overview")
            static var session = UIImage(named: "session")
            static var progress = UIImage(named: "progress")
            static var settings = UIImage(named: "setting")
        }
    }
    //MARK: - Fonts
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
    
    
}
