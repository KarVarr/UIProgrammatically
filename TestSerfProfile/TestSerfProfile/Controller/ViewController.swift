//
//  ViewController.swift
//  TestSerfProfile
//
//  Created by Karen Vardanian on 01.08.2023.
//

import UIKit

class ViewController: UIViewController {
    let viewForTags = CustomUIView()
    let scrollView = CustomScrollView()
    
    let mainImage = CustomImageView()
    let verticalStackView = CustomStackView()
    let nameLabel = CustomLabelView()
    let experienceLabel = CustomLabelView()
    let cityLabel = CustomLabelView()
    
    let cityImage = CustomImageView()
    let horizontalStackViewForLabel = CustomStackView()
    
    let horizontalStackViewVForTagsTitleAndButton = CustomStackView()
    let myExpLabel = CustomLabelView()
    let editButton = CustomButtonView()
    
    let verticalStackViewForMySelf = CustomStackView()
    let aboutMySelfTitleLabel = CustomLabelView()
    let aboutMySelfTextLabel = CustomLabelView()
    
    var buttonIsPressed = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        addViews()
        settings()
        settingsForNavigation()
        settingsForButton()
        settingsForStackView()
        settingsForLabels()
        settingsForImages()
        layout()
    }
    
    private func addViews() {
        view.addSubview(scrollView.scrollView)
        scrollView.scrollView.addSubview(verticalStackView.stackV)
        scrollView.scrollView.addSubview(viewForTags.view)
        scrollView.scrollView.addSubview(horizontalStackViewVForTagsTitleAndButton.stackV)
        scrollView.scrollView.addSubview(verticalStackViewForMySelf.stackV)
        
        
//        view.addSubview(verticalStackView.stackV)
//        view.addSubview(viewForTags.view)
        
        verticalStackView.stackV.addArrangedSubview(mainImage.imageView)
        verticalStackView.stackV.addArrangedSubview(nameLabel.labelView)
        verticalStackView.stackV.addArrangedSubview(experienceLabel.labelView)
        verticalStackView.stackV.addArrangedSubview(horizontalStackViewForLabel.stackV)
        
        horizontalStackViewForLabel.stackV.addArrangedSubview(cityImage.imageView)
        horizontalStackViewForLabel.stackV.addArrangedSubview(cityLabel.labelView)
        
//        view.addSubview(horizontalStackViewVForTagsTitleAndButton.stackV)
        horizontalStackViewVForTagsTitleAndButton.stackV.addArrangedSubview(myExpLabel.labelView)
        horizontalStackViewVForTagsTitleAndButton.stackV.addArrangedSubview(editButton.button)
        
//        view.addSubview(verticalStackViewForMySelf.stackV)
        verticalStackViewForMySelf.stackV.addArrangedSubview(aboutMySelfTitleLabel.labelView)
        verticalStackViewForMySelf.stackV.addArrangedSubview(aboutMySelfTextLabel.labelView)
        
    }
    
    private func settings() {
        view.backgroundColor = Helper.Colors.grayColor
        
        scrollView.scrollView.contentSize = CGSize(width: view.frame.size.width, height: view.frame.size.height)
        viewForTags.view.backgroundColor = Helper.Colors.whiteColor
        
                
        
    }
    
    private func settingsForNavigation() {
        title = Helper.Strings.navTitle
        navigationItem.largeTitleDisplayMode = .never
    }
    
    private func settingsForButton() {
        editButton.button.setImage(UIImage(named: "Pen"), for: .normal)
        editButton.button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)    }
    
    @objc func buttonPressed () {
            buttonIsPressed.toggle()
            let imageName = buttonIsPressed ? "Done" : "Pen"
            editButton.button.setImage(UIImage(named: imageName), for: .normal)
    }
    
    private func settingsForStackView() {
        verticalStackView.stackV.axis = .vertical
        verticalStackView.stackV.alignment = .center
        verticalStackView.stackV.spacing = 16
        
        horizontalStackViewForLabel.stackV.axis = .horizontal
        horizontalStackViewForLabel.stackV.alignment = .center
        
        horizontalStackViewVForTagsTitleAndButton.stackV.axis = .horizontal
        horizontalStackViewVForTagsTitleAndButton.stackV.alignment = .center
        //        horizontalStackViewVForTagsTitleAndButton.stackV.distribution = .fillEqually
        
        
        verticalStackViewForMySelf.stackV.axis = .vertical
        verticalStackViewForMySelf.stackV.alignment = .leading
        verticalStackViewForMySelf.stackV.spacing = 8
    }
    
    
    private func settingsForLabels() {
        textSettings(for: nameLabel.labelView, withText: Helper.Strings.nameLabel, fontForText: Helper.Fonts.helveticaBold(with: 24), colorForText: Helper.Colors.textBlackColor, numberOfLines: 2, lineSpacing: 5.0, textAlignment: .center)
        
        textSettings(for: experienceLabel.labelView, withText: Helper.Strings.experienceLabel, fontForText: Helper.Fonts.helveticaRegular(with: 14), colorForText: Helper.Colors.textGrayColor)
        
        textSettings(for: cityLabel.labelView, withText: Helper.Strings.cityLabel, fontForText: Helper.Fonts.helveticaRegular(with: 14), colorForText: Helper.Colors.textGrayColor)
        
        textSettings(for: myExpLabel.labelView, withText: Helper.Strings.myExpLabel, fontForText: Helper.Fonts.helveticaRegular(with: 16), colorForText: Helper.Colors.textBlackColor)
        
        textSettings(for: aboutMySelfTitleLabel.labelView, withText: Helper.Strings.aboutMySelfTitleLabel, fontForText: Helper.Fonts.helveticaMedium(with: 16), colorForText: Helper.Colors.textBlackColor)
        
        textSettings(for: aboutMySelfTextLabel.labelView, withText: Helper.Strings.aboutMySelfTextLabel, fontForText: Helper.Fonts.helveticaRegular(with: 14), colorForText: Helper.Colors.textBlackColor, numberOfLines: 0)
    }
    
    private func textSettings(for label: UILabel, withText text: String, fontForText font: UIFont, colorForText color: UIColor, numberOfLines: Int? = nil, lineSpacing: CGFloat? = nil, textAlignment: NSTextAlignment? = nil) {
        label.text = text
        label.font = font
        label.textColor = color
        
        if let numberOfLines = numberOfLines {
            label.numberOfLines = numberOfLines
        }
        
        if let lineSpacing = lineSpacing {
            label.setLineSpacing(lineSpacing: lineSpacing)
        }
        
        if let textAlignment = textAlignment {
            label.textAlignment = textAlignment
        }
    }
    
    
    private func settingsForImages() {
        mainImage.imageView.image = UIImage(named: "Karen")
        let resizeImage = mainImage.imageView.image?.resized(to: CGSize(width: 120, height: 120))
        mainImage.imageView.image = resizeImage
        if let imageWidth = resizeImage?.size.width {
            mainImage.imageView.layer.cornerRadius = imageWidth / 2.0
        } else {
            mainImage.imageView.layer.cornerRadius = 0.0
        }
        
        cityImage.imageView.image = UIImage(named: "Location")
    }
    
    
    
    private func layout () {
        let verticalSVForProfile = verticalStackView.stackV
        let horizontalSVForCity = horizontalStackViewForLabel.stackV
        let horizontalSVForTagsTitleAndButton = horizontalStackViewVForTagsTitleAndButton.stackV
        let verticalSVForMySelf = verticalStackViewForMySelf.stackV
        
        NSLayoutConstraint.activate([
            scrollView.scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            verticalSVForProfile.topAnchor.constraint(equalTo: scrollView.scrollView.topAnchor, constant: 24),
            verticalSVForProfile.leadingAnchor.constraint(equalTo: scrollView.scrollView.leadingAnchor, constant: 16),
            verticalSVForProfile.trailingAnchor.constraint(equalTo: scrollView.scrollView.trailingAnchor, constant: -16),
            
            horizontalSVForCity.topAnchor.constraint(equalTo: experienceLabel.labelView.bottomAnchor, constant: 4),
            
            nameLabel.labelView.widthAnchor.constraint(lessThanOrEqualToConstant: 200),
            
            viewForTags.view.topAnchor.constraint(equalTo: verticalSVForProfile.bottomAnchor, constant: 20),
            viewForTags.view.bottomAnchor.constraint(equalTo: scrollView.scrollView.bottomAnchor),
            viewForTags.view.trailingAnchor.constraint(equalTo: scrollView.scrollView.trailingAnchor),
            viewForTags.view.leadingAnchor.constraint(equalTo: scrollView.scrollView.leadingAnchor),
            
            
            horizontalSVForTagsTitleAndButton.topAnchor.constraint(equalTo: verticalSVForProfile.bottomAnchor, constant: 40),
            horizontalSVForTagsTitleAndButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            horizontalSVForTagsTitleAndButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            
            editButton.button.trailingAnchor.constraint(equalTo: horizontalSVForTagsTitleAndButton.trailingAnchor),
            
            verticalSVForMySelf.bottomAnchor.constraint(equalTo: scrollView.scrollView.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            verticalSVForMySelf.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            verticalSVForMySelf.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
        ])
            
    }
    
}

