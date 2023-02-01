//
//  SettingsController.swift
//  WorkoutApp
//
//  Created by Karen Vardanian on 01.02.2023.
//


import UIKit

class SettingsController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Settings"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.settings
    }


}
