//
//  SessionController.swift
//  WorkoutApp
//
//  Created by Karen Vardanian on 01.02.2023.
//

import UIKit

class SessionController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "High Intensity Cardio"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.session
        
        addNavBarButton(at: .left, with: "Pause")
        addNavBarButton(at: .right, with: "Finish")
    }


}
