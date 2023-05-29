//
//  ViewController.swift
//  TestUISlider
//
//  Created by Karen Vardanian on 29.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let slider = Slider()
    let box: UIView = {
        let box = UIView()
        box.translatesAutoresizingMaskIntoConstraints = false
        box.backgroundColor = .clear
        return box
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        slider.frame = CGRect(x: box.frame.midX, y: box.frame.midY, width: 200, height: 44 )
        
                view.addSubview(slider)
        view.addSubview(box)
        box.addSubview(slider)
        
        NSLayoutConstraint.activate([
            box.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            box.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            box.widthAnchor.constraint(equalToConstant: 200),
            box.heightAnchor.constraint(equalToConstant: 44),
            
        ])
        
        
        
        
    }
    
    
}

