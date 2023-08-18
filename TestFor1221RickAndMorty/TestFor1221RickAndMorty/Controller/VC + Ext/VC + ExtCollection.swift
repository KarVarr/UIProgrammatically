//
//  VC + ExtCollection.swift
//  TestFor1221RickAndMorty
//
//  Created by Karen Vardanian on 18.08.2023.
//

import UIKit


extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionViewDelegates() {
        collectionView.collection.delegate = self
        collectionView.collection.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        character.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Helper.Keys.collectionCellKey, for: indexPath) as! CustomCollectionViewCell
        
        cell.backgroundColor = Helper.Colors.cellBlackColor
        cell.layer.cornerRadius = 16
        
        let char = character[indexPath.item]
        cell.nameLabel.labelView.text = char.name
        if let imageUrl = URL(string: char.image) {
            cell.characterImage.customImage.loa
        }
        return cell
    }
    
    
    
}
