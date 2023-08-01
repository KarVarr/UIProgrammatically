//
//  ViewController.swift
//  TestSerfProfile
//
//  Created by Karen Vardanian on 01.08.2023.
//

import UIKit

class ViewController: UIViewController {
    let mainImage = CustomImageView()
    let verticalStackView = CustomStackView()
    let viewLayerForImage = CustomUIView()
    let nameLabel = CustomLabelView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        addViews()
        settings()
        layout()
    }
    
    private func addViews() {
        
        view.addSubview(verticalStackView.stackV)
        
        verticalStackView.stackV.addArrangedSubview(mainImage.imageView)
        verticalStackView.stackV.addArrangedSubview(nameLabel.labelView)
        
    }
    
    private func settings() {
        view.backgroundColor = Helper.Colors.grayColor
        title = Helper.Strings.navTitle
        navigationItem.largeTitleDisplayMode = .never
        
        mainImage.imageView.image = UIImage(named: "Karen")
        let resizeImage = mainImage.imageView.image?.resized(to: CGSize(width: 120, height: 120))
        mainImage.imageView.image = resizeImage
        if let imageWidth = resizeImage?.size.width {
            mainImage.imageView.layer.cornerRadius = imageWidth / 2.0
        } else {
            mainImage.imageView.layer.cornerRadius = 0.0
        }
        
        verticalStackView.stackV.axis = .vertical
        verticalStackView.stackV.alignment = .center
        verticalStackView.stackV.spacing = 16
        verticalStackView.stackV.layer.borderWidth = 2
        verticalStackView.stackV.layer.borderColor = UIColor.red.cgColor
        
        
        
        nameLabel.labelView.text = Helper.Strings.nameLabel
        nameLabel.labelView.font = Helper.Fonts.helveticaBold(with: 24)
        nameLabel.labelView.numberOfLines = 2
        nameLabel.labelView.setLineSpacing(lineSpacing: 5.0)
        nameLabel.labelView.textAlignment = .center
        
    }
    
    private func layout () {
        let verticalStack = verticalStackView.stackV
        NSLayoutConstraint.activate([
            verticalStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 24),
            verticalStack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            verticalStack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            
            nameLabel.labelView.widthAnchor.constraint(lessThanOrEqualToConstant: 200)
        ])
    }
    
}

