//
//  VC + AddViews.swift
//  TestSerfProfile
//
//  Created by Karen Vardanian on 01.08.2023.
//

import UIKit

extension ViewController {
    func addViews() {
        view.addSubview(scrollView.scrollView)
        scrollView.scrollView.addSubview(verticalStackViewForProfileImageAndText.stackV)
        scrollView.scrollView.addSubview(viewForTags.view)
        viewForTags.view.addSubview(horizontalStackViewVForTagsTitleAndButton.stackV)
        viewForTags.view.addSubview(collectionView.collection)
        viewForTags.view.addSubview(verticalStackViewForMySelf.stackV)
        
        verticalStackViewForProfileImageAndText.stackV.addArrangedSubview(mainImage.imageView)
        verticalStackViewForProfileImageAndText.stackV.addArrangedSubview(nameLabel.labelView)
        verticalStackViewForProfileImageAndText.stackV.addArrangedSubview(experienceLabel.labelView)
        verticalStackViewForProfileImageAndText.stackV.addArrangedSubview(horizontalStackViewForLabel.stackV)
        
        horizontalStackViewForLabel.stackV.addArrangedSubview(cityImage.imageView)
        horizontalStackViewForLabel.stackV.addArrangedSubview(cityLabel.labelView)
        
        horizontalStackViewVForTagsTitleAndButton.stackV.addArrangedSubview(myExpLabel.labelView)
        horizontalStackViewVForTagsTitleAndButton.stackV.addArrangedSubview(editButton.button)
        
        verticalStackViewForMySelf.stackV.addArrangedSubview(aboutMySelfTitleLabel.labelView)
        verticalStackViewForMySelf.stackV.addArrangedSubview(aboutMySelfTextLabel.labelView)
        
    }
}
