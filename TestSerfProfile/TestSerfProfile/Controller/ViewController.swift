//
//  ViewController.swift
//  TestSerfProfile
//
//  Created by Karen Vardanian on 01.08.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        addViews()
        settings()
        layout()
    }
    
    private func addViews() {
        
    }

    private func settings() {
        view.backgroundColor = .orange
        title = Helper.String.navTitle
        navigationItem.largeTitleDisplayMode = .never
        
    }
    
    private func layout () {
        
    }

}

