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
    override func setupViews() {
        super.setupViews()
        //title = "Working Tracking App"
        navigationController?.tabBarItem.title = R.Strings.Overview.allWorkoutsButton
        navigationController?.setNavigationBarHidden(true, animated: true)
        view.setupViews(navBar)
        
    }
    
    override func constaintViews() {
        super.constaintViews()
        
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
    }
}


