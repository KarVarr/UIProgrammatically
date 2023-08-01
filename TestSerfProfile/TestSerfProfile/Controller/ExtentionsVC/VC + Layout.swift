//
//  VC + Layout.swift
//  TestSerfProfile
//
//  Created by Karen Vardanian on 01.08.2023.
//

import UIKit


extension ViewController {
    func layout () {
        let scrollView = scrollView.scrollView
        let verticalSVForProfile = verticalStackViewForProfileImageAndText.stackV
        let horizontalSVForCity = horizontalStackViewForLabel.stackV
        let viewForTags = viewForTags.view
        let horizontalSVForTagsTitleAndButton = horizontalStackViewVForTagsTitleAndButton.stackV
        let collection = collectionView.collection
        let verticalSVForMySelf = verticalStackViewForMySelf.stackV
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            verticalSVForProfile.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 24),
            verticalSVForProfile.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            verticalSVForProfile.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            horizontalSVForCity.topAnchor.constraint(equalTo: experienceLabel.labelView.bottomAnchor, constant: 4),
            
            nameLabel.labelView.widthAnchor.constraint(lessThanOrEqualToConstant: 200),
            
            viewForTags.topAnchor.constraint(equalTo: verticalSVForProfile.bottomAnchor, constant: 20),
            viewForTags.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            viewForTags.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            viewForTags.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            
            horizontalSVForTagsTitleAndButton.topAnchor.constraint(equalTo: verticalSVForProfile.bottomAnchor, constant: 40),
            horizontalSVForTagsTitleAndButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            horizontalSVForTagsTitleAndButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            editButton.button.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            
            collection.topAnchor.constraint(equalTo: horizontalSVForTagsTitleAndButton.bottomAnchor, constant: 16),
            collection.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            collection.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            collection.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -60),
            
            verticalSVForMySelf.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            verticalSVForMySelf.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            verticalSVForMySelf.bottomAnchor.constraint(equalTo: viewForTags.bottomAnchor, constant: -30)
            
        ])
        
    }
}
