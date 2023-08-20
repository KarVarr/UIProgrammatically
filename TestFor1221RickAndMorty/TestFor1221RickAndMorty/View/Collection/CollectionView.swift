//
//  CollectionView.swift
//  TestFor1221RickAndMorty
//
//  Created by Karen Vardanian on 18.08.2023.
//

import UIKit



class CollectionView {
    let collection: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        layout.minimumLineSpacing = 16
        layout.minimumInteritemSpacing = 16
        layout.itemSize = CGSize(width: 156, height: 202)
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: Helper.Keys.collectionCellKey)
        collectionView.backgroundColor = Helper.Colors.mainBlackColor
        collectionView.contentInset = UIEdgeInsets(top: 31, left: 20, bottom: 0, right: 20)
        return collectionView
    }()
}
