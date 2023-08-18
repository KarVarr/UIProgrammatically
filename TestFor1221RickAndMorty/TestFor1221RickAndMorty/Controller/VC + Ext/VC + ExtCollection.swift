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
        collectionView.deselectItem(at: indexPath, animated: true)
        
        let detailVC = DetailViewController()
        navigationItem.backButtonTitle = ""
        navigationController?.pushViewController(detailVC, animated: true)
        
        //        detailVC.charImage.customImage.image = character[indexPath.item].image
        let char = character[indexPath.item]
        
        detailVC.characterName = char.name
        switch char.status {
        case .alive: detailVC.characterStatus = "Alive"
        case .dead: detailVC.characterStatus = "Dead"
        case .unknown: detailVC.characterStatus = "Unknown"
        }
        
         
        if let imageUrl = URL(string: char.image) {
            if let cachedImage = imageCache.object(forKey: imageUrl.absoluteString as NSString) {
                detailVC.characterImage = cachedImage
            } else {
                DispatchQueue.global().async {
                    if let imageData = try? Data(contentsOf: imageUrl),
                       let image = UIImage(data: imageData) {
                        DispatchQueue.main.async { [unowned self] in
                            detailVC.characterImage = image
                            self.imageCache.setObject(image, forKey: imageUrl.absoluteString as NSString)
                        }
                    }
                }
            }
        }
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
            if let cachedImage = imageCache.object(forKey: imageUrl.absoluteString as NSString) {
                cell.characterImage.customImage.image = cachedImage
            } else {
                DispatchQueue.global().async {
                    if let imageData = try? Data(contentsOf: imageUrl),
                       let image = UIImage(data: imageData) {
                        DispatchQueue.main.async { [unowned self] in
                            cell.characterImage.customImage.image = image
                            self.imageCache.setObject(image, forKey: imageUrl.absoluteString as NSString)
                        }
                    }
                }
            }
        }
        
        return cell
    }
    
}
