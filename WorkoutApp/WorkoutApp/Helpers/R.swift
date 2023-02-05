//
//  Resources.swift
//  WorkoutApp
//
//  Created by Karen Vardanian on 01.02.2023.
//

import UIKit

enum R {
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
            static func title(for tab: Tabs) -> String {
                switch tab {
                case .overview: return "Overview"
                case .session: return "Session"
                case .progress: return "Progress"
                case .settings: return "Settings"
                }
            }
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
            static func icon(for tab: Tabs) -> UIImage? {
                switch tab {
                case .overview: return UIImage(named: "overview")
                case .session: return UIImage(named: "session")
                case .progress: return UIImage(named: "progress")
                case .settings: return UIImage(named: "setting")
                }
            }
        }
        
        
        
        enum Common {
            static var downArrow = UIImage(named: "down_arrow")
            static var add = UIImage(named: "add_button")
        }
    }
    //MARK: - Fonts
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
    
    
}
