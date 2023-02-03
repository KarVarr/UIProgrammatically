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
        
        
        static var background = UIColor(hexString: "#F8F9F9")
        static var separator = UIColor (hexString: "#E8ECEF")
        static var secondary = UIColor (hexString: "#F0F3FF")
        
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
        
        enum NavBar {
            static var overview = "Today"
            static var session = "High Intensity Cardio"
            static var settings = "Settings"
            static var progress = "Workout Progress"
        }
        
        enum Overview {
            static var allWorkoutsButton = "All Workouts"
        }
        
        enum Session {
            static var navBarLeft = "Pause"
            static var navBarRight = "Finish"
        }
        
        enum Progress {
            static var navBarLeft = "Export"
            static var navBarRight = "Details"
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
        
        
        
        enum Common {
            static var downArrow = UIImage(named: "down_arrow")
            static var add = UIImage(named: "addButton")
        }
    }
    //MARK: - Fonts
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
    
    
}
