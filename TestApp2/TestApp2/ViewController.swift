//
//  ViewController.swift
//  TestApp2
//
//  Created by Karen Vardanian on 27.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let mainLabel = TestView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureLayout()
        configureView()
        
    }
    
    private func configureLayout() {
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mainLabel)
        
        NSLayoutConstraint.activate([
            mainLabel.widthAnchor.constraint(equalToConstant: 300),
            mainLabel.heightAnchor.constraint(equalToConstant: 100),
            
            mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100)
        ])
    }
    
    private func configureView() {
        mainLabel.text = "Change some text"
    }


}

