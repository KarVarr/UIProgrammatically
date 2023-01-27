//
//  testView.swift
//  TestApp2
//
//  Created by Karen Vardanian on 27.01.2023.
//

import Foundation
import UIKit

final class TestView: UIView {
    //MARK: - Public variables
    
    public var text = "" {
        didSet {
            textLabel.text = text
        }
    }
    
    private let textLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureLayout()
        configureView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureLayout()
        configureView()
    }
    
    //MARK: - Privete funcs
    
    private func configureLayout() {
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(textLabel)
        
        NSLayoutConstraint.activate([
            textLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            textLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    private func configureView() {
        backgroundColor = .blue
        textLabel.textColor = .magenta
        textLabel.text = "Some Text"
        
    }
}
