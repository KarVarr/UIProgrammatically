//
//  Helper.swift
//  ToDo ListHHJSS
//
//  Created by Karen Vardanian on 29.01.2025.
//

import Foundation
import UIKit


enum Helper {
    enum TodoListTableView {
        static let cellIdentifier = "TodoListTableViewCell"
    }
    
    enum Colors {
        static func hexColor(hex: String) -> UIColor {
            var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
            hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
            
            var rgb: UInt64 = 0
            Scanner(string: hexSanitized).scanHexInt64(&rgb)
            
            let red = CGFloat((rgb >> 16) & 0xFF) / 255.0
            let green = CGFloat((rgb >> 8) & 0xFF) / 255.0
            let blue = CGFloat(rgb & 0xFF) / 255.0
            
            return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        }
    }
}
