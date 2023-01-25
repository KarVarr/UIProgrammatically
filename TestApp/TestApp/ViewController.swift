//
//  ViewController.swift
//  TestApp
//
//  Created by Karen Vardanian on 25.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    let button: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Button", for: .normal)
        button.setTitleColor(.magenta, for: .normal)
        button.setTitleShadowColor(.black, for: .normal)
        button.backgroundColor = .systemIndigo
        button.layer.cornerRadius = 10
        
        
        return button
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupView()
    }
    
   private func setupView() {
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15)
        ])
    }
    
    
    


}

