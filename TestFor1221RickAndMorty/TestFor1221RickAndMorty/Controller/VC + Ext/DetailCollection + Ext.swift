//
//  DetailCollection + Ext.swift
//  TestFor1221RickAndMorty
//
//  Created by Karen Vardanian on 20.08.2023.
//

import UIKit

extension DetailViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionViewDelegates() {
        collectionVC.collection.delegate = self
        collectionVC.collection.dataSource = self
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Helper.Keys.detailCollectionCellKey, for: indexPath) as! DetailCollectionViewCell
        cell.backgroundColor = .orange
        
        
        
        
        return cell
    }
    
   

}
