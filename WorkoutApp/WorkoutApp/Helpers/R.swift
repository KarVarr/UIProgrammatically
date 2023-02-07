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
        static let active = UIColor(hexString: "#437BFE")
        static let inActive = UIColor(hexString: "#929DA5")
        
        
        static let background = UIColor(hexString: "#F8F9F9")
        static let separator = UIColor (hexString: "#E8ECEF")
        static let secondary = UIColor (hexString: "#F0F3FF")
        
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
            static let overview = "Today"
            static let session = "High Intensity Cardio"
            static let settings = "Settings"
            static let progress = "Workout Progress"
        }
        
        enum Overview {
            static let allWorkoutsButton = "All Workouts"
        }
        
        enum Session {
            static let navBarLeft = "Pause"
            static let navBarRight = "Finish"
        }
        
        enum Progress {
            static let navBarLeft = "Export"
            static let navBarRight = "Details"
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
            static let downArrow = UIImage(named: "down_arrow")
            static let add = UIImage(named: "add_button")
        }
    }
    //MARK: - Fonts
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
    
    
}
