//
//  ViewController.swift
//  TemperatureСonversion
//
//  Created by Karen Vardanian on 13.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let segmentTitle = Titles()
    let temperatureTitle = Titles()
    let resultTitle = Titles()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        
        segmentTitle.configure(with: R.Strings.segmentTitle)
        
        addView()
        layout()
        
    }
    
   
    
    func addView() {
        view.addSubview(segmentTitle.title)
    }
    
    
    func layout() {
        NSLayoutConstraint.activate([
            segmentTitle.title.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            segmentTitle.title.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15)
        ])
    }
    
}

