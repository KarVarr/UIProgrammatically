//
//  ViewController.swift
//  TemperatureСonversion
//
//  Created by Karen Vardanian on 13.02.2023.
//

import UIKit

class ViewController: UIViewController {

    let titleSegment: UILabel = {
      let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .gray
        label.textAlignment = .left
        return label
   }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        
        addView()
        layout()
        configure()
    }
    
    func addView() {
        view.addSubview(titleSegment)
    }
    
    
    func layout() {
        NSLayoutConstraint.activate([
            titleSegment.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            titleSegment.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15)
        ])
    }
    
    func configure() {
        titleSegment.text = "Fahrenheit or celsius".uppercased()
    }


}

