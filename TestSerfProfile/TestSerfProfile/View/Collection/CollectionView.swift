//
//  CollectionView.swift
//  TestSerfProfile
//
//  Created by Karen Vardanian on 01.08.2023.
//

import UIKit



class CollectionView {

    let collection: UICollectionView = {
        
        let layout = CustomViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        layout.minimumLineSpacing = 12
        layout.minimumInteritemSpacing = 12
        
        let view = UICollectionView(frame: .infinite,  collectionViewLayout: layout)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: Helper.Keys.collectionCellKey)
        view.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 20, right: 0)
        
        return view
    }()
}


