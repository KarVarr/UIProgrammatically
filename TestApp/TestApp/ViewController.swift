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
        //button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Button", for: .normal)
        button.setTitleColor(.magenta, for: .normal)
        button.setTitleShadowColor(.black, for: .normal)
        button.backgroundColor = .systemIndigo
        button.layer.cornerRadius = 10
        
        return button
    }()
    
    let mainLabel: UILabel = {
        let label = UILabel()
        //label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Main label with some text"
        label.textColor = .red
        return label
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        //label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Title"
        label.textColor = .cyan
        return label
    }()
    
    let horizontalStack: UIStackView = {
        let stack = UIStackView()
        //stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.layer.borderColor = UIColor.blue.cgColor
        stack.layer.borderWidth = 1
        return stack
    }()
    let verticalStack: UIStackView = {
        let stack = UIStackView()
        // stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.layer.borderColor = UIColor.red.cgColor
        stack.layer.borderWidth = 2
        return stack
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupView()
    }
    
    private func setupView() {
        //        view.addSubview(button)
        //        NSLayoutConstraint.activate([
        //            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        //            button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15)
        //        ])
        
        [button, titleLabel].forEach{
            $0.translatesAutoresizingMaskIntoConstraints = false
            horizontalStack.addArrangedSubview($0)
        }
        [mainLabel,horizontalStack].forEach{
            $0.translatesAutoresizingMaskIntoConstraints = false
            verticalStack.addArrangedSubview($0)
        }
        
        verticalStack.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(verticalStack)
        
        NSLayoutConstraint.activate([
            verticalStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            verticalStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            verticalStack.widthAnchor.constraint(equalToConstant: 300),
            //horizontalStack.leadingAnchor.constraint(equalTo: verticalStack.leadingAnchor,constant: 40),
            //horizontalStack.centerXAnchor.constraint(equalTo: verticalStack.centerXAnchor),
           // horizontalStack.centerYAnchor.constraint(equalTo: verticalStack.centerYAnchor),
            horizontalStack.widthAnchor.constraint(equalToConstant: 100),
        ])
       
        
    }
    
    
    
    
    
}

