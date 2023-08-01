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
    let collectionView = CollectionView()
    
    let mainImage = CustomImageView()
    let verticalStackViewForProfileImageAndText = CustomStackView()
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
    var arr = ["MVVM", "Xcode", "MVC", "MVP", "Swift", "OOPOOPOOPOOPOOP"]
    
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
    
    
    private func settings() {
        view.backgroundColor = Helper.Colors.grayColor
        
        
        scrollView.scrollView.contentSize = CGSize(width: view.frame.size.width, height: view.frame.size.height)
        viewForTags.view.backgroundColor = Helper.Colors.whiteColor
        
        //        collectionView.collection.backgroundColor = .red
        collectionView.collection.delegate = self
        collectionView.collection.dataSource = self
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
        
        if buttonIsPressed {
            arr = arr.map { $0 + " x" }
            arr.append("+")
        } else {
            arr = arr.map { $0.replacingOccurrences(of: " x", with: "") }
            arr.removeAll(where: { $0 == "+" })
        }
        
        collectionView.collection.reloadData()
        
    }
    
    
    private func settingsForStackView() {
        applyStackViewSettings(verticalStackViewForProfileImageAndText.stackV, axis: .vertical, alignment: .center, spacing: 16)
        applyStackViewSettings(horizontalStackViewForLabel.stackV, axis: .horizontal, alignment: .center, spacing: 0)
        applyStackViewSettings(horizontalStackViewVForTagsTitleAndButton.stackV, axis: .horizontal, alignment: .center, spacing: 0)
        applyStackViewSettings(verticalStackViewForMySelf.stackV, axis: .vertical, alignment: .leading, spacing: 8)
    }
    
    private func applyStackViewSettings(_ stackView: UIStackView, axis: NSLayoutConstraint.Axis, alignment: UIStackView.Alignment, spacing: CGFloat) {
        stackView.axis = axis
        stackView.alignment = alignment
        stackView.spacing = spacing
    }
    
    
    private func settingsForLabels() {
        textSettings(for: nameLabel.labelView, withText: Helper.Strings.nameLabel, fontForText: Helper.Fonts.SFProTextBold(with: 24), colorForText: Helper.Colors.textBlackColor, numberOfLines: 2, lineSpacing: 5.0, textAlignment: .center)
        
        textSettings(for: experienceLabel.labelView, withText: Helper.Strings.experienceLabel, fontForText: Helper.Fonts.SFProTextRegular(with: 14), colorForText: Helper.Colors.textGrayColor)
        
        textSettings(for: cityLabel.labelView, withText: Helper.Strings.cityLabel, fontForText: Helper.Fonts.SFProTextRegular(with: 14), colorForText: Helper.Colors.textGrayColor)
        
        textSettings(for: myExpLabel.labelView, withText: Helper.Strings.myExpLabel, fontForText: Helper.Fonts.SFProTextRegular(with: 16), colorForText: Helper.Colors.textBlackColor)
        
        textSettings(for: aboutMySelfTitleLabel.labelView, withText: Helper.Strings.aboutMySelfTitleLabel, fontForText: Helper.Fonts.SFProTextMedium(with: 16), colorForText: Helper.Colors.textBlackColor)
        
        textSettings(for: aboutMySelfTextLabel.labelView, withText: Helper.Strings.aboutMySelfTextLabel, fontForText: Helper.Fonts.SFProTextRegular(with: 14), colorForText: Helper.Colors.textBlackColor, numberOfLines: 0)
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
        let verticalSVForProfile = verticalStackViewForProfileImageAndText.stackV
        let horizontalSVForCity = horizontalStackViewForLabel.stackV
        let horizontalSVForTagsTitleAndButton = horizontalStackViewVForTagsTitleAndButton.stackV
        let collection = collectionView.collection
        let verticalSVForMySelf = verticalStackViewForMySelf.stackV
        
        NSLayoutConstraint.activate([
            scrollView.scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            verticalSVForProfile.topAnchor.constraint(equalTo: scrollView.scrollView.topAnchor, constant: 24),
            verticalSVForProfile.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            verticalSVForProfile.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            horizontalSVForCity.topAnchor.constraint(equalTo: experienceLabel.labelView.bottomAnchor, constant: 4),
            
            nameLabel.labelView.widthAnchor.constraint(lessThanOrEqualToConstant: 200),
            
            viewForTags.view.topAnchor.constraint(equalTo: verticalSVForProfile.bottomAnchor, constant: 20),
            viewForTags.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            viewForTags.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            viewForTags.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            
            
            horizontalSVForTagsTitleAndButton.topAnchor.constraint(equalTo: verticalSVForProfile.bottomAnchor, constant: 40),
            horizontalSVForTagsTitleAndButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            horizontalSVForTagsTitleAndButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            editButton.button.trailingAnchor.constraint(equalTo: scrollView.scrollView.trailingAnchor),
            
            collection.topAnchor.constraint(equalTo: horizontalSVForTagsTitleAndButton.bottomAnchor, constant: 16),
            collection.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            collection.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            collection.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -60),
            
            
            //            verticalSVForMySelf.topAnchor.constraint(equalTo: collection.bottomAnchor, constant: 16),
            verticalSVForMySelf.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            verticalSVForMySelf.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            verticalSVForMySelf.bottomAnchor.constraint(equalTo: viewForTags.view.bottomAnchor, constant: -30)
            
        ])
        
    }
    
}

