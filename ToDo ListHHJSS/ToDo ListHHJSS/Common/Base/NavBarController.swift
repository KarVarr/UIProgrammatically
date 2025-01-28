//
//  NavBarController.swift
//  ToDo ListHHJSS
//
//  Created by Karen Vardanian on 28.01.2025.
//

import UIKit

final class NavBarController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        configureAppearance()
    }
    
    private func configureAppearance() {
        navigationBar.prefersLargeTitles = true
    }
}
