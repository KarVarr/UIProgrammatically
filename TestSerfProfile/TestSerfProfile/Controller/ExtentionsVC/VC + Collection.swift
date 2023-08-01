//
//  VC + Collection.swift
//  TestSerfProfile
//
//  Created by Karen Vardanian on 01.08.2023.
//

import UIKit

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let tag = tags.arrayOfTags[indexPath.item]
        
        if tag == "+" {
            addNewWord()
        }
        
        if buttonIsPressed && tag.hasSuffix(" X") {
            tags.arrayOfTags.remove(at: indexPath.item)
            collectionView.deleteItems(at: [indexPath])
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tags.arrayOfTags.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Helper.Keys.collectionCellKey, for: indexPath) as! CustomCollectionViewCell
        
        cell.backgroundColor = Helper.Colors.grayColor
        cell.layer.cornerRadius = 12
        cell.skill.labelView.text = tags.arrayOfTags[indexPath.item]
        
        return cell
    }
    
    func addNewWord() {
        let alert = UIAlertController(title: Helper.Strings.StringForAlert.title, message: Helper.Strings.StringForAlert.message, preferredStyle: .alert)
        alert.addTextField { textField in
            textField.placeholder = Helper.Strings.StringForAlert.placeholder
        }
        let addAction = UIAlertAction(title: Helper.Strings.StringForAlert.add, style: .default) { [weak self] _ in
            if let newWord = alert.textFields?.first?.text, !newWord.isEmpty {
                self?.tags.arrayOfTags.insert(newWord + " X", at: (self?.tags.arrayOfTags.count)! - 1 )
                self?.collectionView.collection.reloadData()
            }
        }
        let cancelAction = UIAlertAction(title: Helper.Strings.StringForAlert.cancel, style: .cancel)
        alert.addAction(addAction)
        alert.addAction(cancelAction)
        present(alert, animated: true)
    }
    
    
}
