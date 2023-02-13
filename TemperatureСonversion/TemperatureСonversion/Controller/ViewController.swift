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
    
    let segment = Segment()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        
        addView()
        layout()
        settings()
    }
    
 
    
}

extension ViewController {
    
     
     func addView() {
         view.addSubview(segment.segment)
         view.addSubview(segmentTitle.title)
         view.addSubview(temperatureTitle.title)
     }
     
     
     func layout() {
         NSLayoutConstraint.activate([
             segmentTitle.title.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
             segmentTitle.title.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
             
             segment.segment.topAnchor.constraint(equalTo: segmentTitle.title.bottomAnchor,constant: 20),
             segment.segment.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 15),
             segment.segment.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
             
             
             temperatureTitle.title.topAnchor.constraint(equalTo: segment.segment.bottomAnchor, constant: 50),
             temperatureTitle.title.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
             
         ])
     }
     
     func settings () {
         segmentTitle.configure(with: R.Strings.segmentTitle)
         temperatureTitle.configure(with: R.Strings.temperatureTitle)
         segment.segment.translatesAutoresizingMaskIntoConstraints = false
     }
}

