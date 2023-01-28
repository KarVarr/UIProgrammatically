//
//  ViewController.swift
//  BoyWavingHello
//
//  Created by Karen Vardanian on 27.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let horizontalStack:  UIStackView = {
       let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.layer.borderColor = UIColor.red.cgColor
        stack.layer.borderWidth = 1
        stack.backgroundColor = .red
        return stack
    }()
    
    let menuImage: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "menu")
        
        return image
    }()
    
    let skipButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Skip", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .clear
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 17
        return button
    }()
    
    
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
    
    let dot: UIPageControl = {
        let dot = UIPageControl()
        dot.translatesAutoresizingMaskIntoConstraints = false
        dot.backgroundStyle = .automatic
        dot.numberOfPages = 3
        dot.currentPage = 0
        dot.tintColor = .white
        dot.currentPageIndicatorTintColor = .darkGray
        return dot
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(red: 0.82, green: 0.86, blue: 0.97, alpha: 1.00)
        setupHorizontal()
        setupMenuImage()
        setupButton()
        setupImage()
        setupTitleLabel()
        setupLoremLabel()
        setupDot()
    }
    
    func setupHorizontal() {
        view.addSubview(horizontalStack)
        [menuImage, skipButton].forEach {
            horizontalStack.addArrangedSubview($0)
        }
        NSLayoutConstraint.activate([
            horizontalStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            horizontalStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            horizontalStack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            horizontalStack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 16),
            horizontalStack.widthAnchor.constraint(equalToConstant: 350)
            
        ])
    }
    
    func setupMenuImage() {
        view.addSubview(menuImage)
        NSLayoutConstraint.activate([
            menuImage.widthAnchor.constraint(equalToConstant: 35),
            menuImage.heightAnchor.constraint(equalToConstant: 35),
            menuImage.topAnchor.constraint(equalTo: horizontalStack.topAnchor),
            menuImage.leadingAnchor.constraint(equalTo: horizontalStack.leadingAnchor, constant: 20)
        ])
    }
    
    func setupButton() {
        view.addSubview(skipButton)
        NSLayoutConstraint.activate([
            skipButton.widthAnchor.constraint(equalToConstant: 100),
            skipButton.trailingAnchor.constraint(equalTo: horizontalStack.trailingAnchor, constant: -45),
            skipButton.topAnchor.constraint(equalTo: horizontalStack.topAnchor),
            
        ])
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
    
    func setupDot() {
        view.addSubview(dot)
        NSLayoutConstraint.activate([
            dot.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dot.topAnchor.constraint(equalTo: loremLabel.bottomAnchor, constant: 20)
        ])
    }

}

