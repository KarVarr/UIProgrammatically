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
        image.image = UIImage(named: "boy")
        return image
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Future here"
        label.font = UIFont(name:"AppleSDGothicNeo-Light", size: 60)
        label.textColor = .systemTeal
        return label
    }()
    
    let loremLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Soon our minds will be surpassed by robots, and humanity will fall and our race will collapse"
        label.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 18)
        label.textColor = .darkGray
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.minimumScaleFactor = 0.5
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(red: 0.82, green: 0.86, blue: 0.97, alpha: 1.00)
        setupImage()
        setupTitleLabel()
        setupLoremLabel()
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
    
    func setupTitleLabel() {
        view.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 20)
        ])
    }
    
    func setupLoremLabel() {
        view.addSubview(loremLabel)
        NSLayoutConstraint.activate([
            loremLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loremLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            loremLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 16),
            loremLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
           
        ])
    }

}

