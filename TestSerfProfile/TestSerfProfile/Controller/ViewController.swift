//
//  ViewController.swift
//  TestSerfProfile
//
//  Created by Karen Vardanian on 01.08.2023.
//

import UIKit

class ViewController: UIViewController {
    let tags = Tags()
    let viewForTags = CustomUIView()
    let scrollView = CustomScrollView()
    let collectionView = CollectionView()
    
    let mainImage = CustomImageView()
    let verticalStackViewForProfileImageAndText = CustomStackView()
    let nameLabel = CustomLabelView()
    let experienceLabel = CustomLabelView()
    
    let horizontalStackViewForLabel = CustomStackView()
    let cityLabel = CustomLabelView()
    let cityImage = CustomImageView()
    
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
    
    private func settings() {
        view.backgroundColor = Helper.Colors.grayColor
        
        scrollView.scrollView.contentSize = CGSize(width: view.frame.size.width, height: view.frame.size.height)
        viewForTags.view.backgroundColor = Helper.Colors.whiteColor
        
        collectionView.collection.delegate = self
        collectionView.collection.dataSource = self
    }
    
    private func settingsForNavigation() {
        title = Helper.Strings.navTitle
        navigationItem.largeTitleDisplayMode = .never
    }
    
    
}

