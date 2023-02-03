//
//  ViewController.swift
//  WorkoutApp
//
//  Created by Karen Vardanian on 01.02.2023.
//

import UIKit

class OverviewController: BaseController {
    
    private let navBar = OverviewNavBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

extension OverviewController {
    override func addViews() {
        super.addViews()
        //title = "Working Tracking App"
        navigationController?.tabBarItem.title = Resources.Strings.Overview.allWorkoutsButton
        navigationController?.setNavigationBarHidden(true, animated: true)
        view.addView(navBar)
        
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
    
    override func configure() {
        super.configure()
        
    }
}


