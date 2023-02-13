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
    
    let textField = TextField()
    
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
         view.addSubview(textField.textField)
         view.addSubview(segmentTitle.title)
         view.addSubview(temperatureTitle.title)
         view.addSubview(resultTitle.title)
     }
     
     
     func layout() {
         NSLayoutConstraint.activate([
             segmentTitle.title.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
             segmentTitle.title.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
             
             segment.segment.topAnchor.constraint(equalTo: segmentTitle.title.bottomAnchor,constant: 20),
             segment.segment.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 40),
             segment.segment.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
             
             temperatureTitle.title.topAnchor.constraint(equalTo: segment.segment.bottomAnchor, constant: 50),
             temperatureTitle.title.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
             
             textField.textField.topAnchor.constraint(equalTo: temperatureTitle.title.bottomAnchor,constant: 20),
             textField.textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
             textField.textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
             textField.textField.heightAnchor.constraint(equalToConstant: 40),
             
             resultTitle.title.topAnchor.constraint(equalTo: textField.textField.bottomAnchor, constant: 50),
             resultTitle.title.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30)
             
             
         ])
     }
     
     func settings () {
         segmentTitle.configure(with: R.Strings.segmentTitle)
         temperatureTitle.configure(with: R.Strings.temperatureTitle)
         resultTitle.configure(with: R.Strings.resultTitle)
         
         segment.segment.translatesAutoresizingMaskIntoConstraints = false
         segment.segment.selectedSegmentIndex = 0
         
         
     }
}

