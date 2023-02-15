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
    let resultLabel = ResultLabel()
    let button = Button()
    
    var result: Double = 0
    
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
        view.addSubview(resultLabel.label)
        view.addSubview(button.button)
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
            resultTitle.title.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            
            resultLabel.label.topAnchor.constraint(equalTo: resultTitle.title.bottomAnchor, constant: 20),
            resultLabel.label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            
            button.button.topAnchor.constraint(equalTo: resultLabel.label.bottomAnchor, constant: 30),
            button.button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.button.widthAnchor.constraint(equalToConstant: 200),
            button.button.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func settings () {
        segmentTitle.configure(with: R.Strings.segmentTitle)
        temperatureTitle.configure(with: R.Strings.temperatureTitle)
        resultTitle.configure(with: R.Strings.resultTitle)
        
        //textField.textField.addTarget(self, action: #selector(textFieldInput(_:)), for: .editingChanged)
        
        segment.segment.translatesAutoresizingMaskIntoConstraints = false
        segment.segment.selectedSegmentIndex = 0
        
        resultLabel.label.translatesAutoresizingMaskIntoConstraints = false
        resultLabel.label.text = "0"
        //textField.textField.text = "0"
        
        button.button.translatesAutoresizingMaskIntoConstraints = false
        button.button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
    }

    
    @objc func buttonAction() {
        if textField.textField.text == "" {
            let ac = UIAlertController(title: "Warning!", message: "Please write a temperature", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Ok", style: .default))
            present(ac, animated: true)
        } else if segment.segment.selectedSegmentIndex == 0 {
                  result = Double(textField.textField.text!)!  * 1.8 + 32.0
              } else {
                  result = (Double(textField.textField.text!)! - 32) * 0.5556
              }

        resultLabel.label.text = "\(result)"
    }
    
    
    
}

