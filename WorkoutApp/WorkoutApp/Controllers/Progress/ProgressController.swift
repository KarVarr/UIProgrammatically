//
//  ProgressController.swift
//  WorkoutApp
//
//  Created by Karen Vardanian on 01.02.2023.
//

import UIKit

class ProgressController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Workout Progress"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.progress
    }


}
