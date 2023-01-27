//
//  ViewController.swift
//  BoyWavingHello
//
//  Created by Karen Vardanian on 27.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let image: UIImageView = {
        var image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image = UIImageView(image: UIImage(named: "boy"))
        
        return image
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(red: 0.82, green: 0.86, blue: 0.97, alpha: 1.00)
        setupImage()
    }
    
    func setupImage()  {
        view.addSubview(image)
        NSLayoutConstraint.activate([
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            image.widthAnchor.constraint(equalToConstant: 300),
            image.heightAnchor.constraint(equalToConstant: 300)
        ])
    }


}

