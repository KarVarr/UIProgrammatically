//
//  VC + Collection.swift
//  TestSerfProfile
//
//  Created by Karen Vardanian on 01.08.2023.
//

import UIKit

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if arr[indexPath.item] == "+" {
            addNewWord()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Helper.Keys.collectionCellKey, for: indexPath) as! CustomCollectionViewCell
        
        
        cell.backgroundColor = Helper.Colors.grayColor
        cell.layer.cornerRadius = 12
        cell.skill.labelView.text = arr[indexPath.item]
        
        return cell
    }
    
     func addNewWord() {
        let alert = UIAlertController(title: "Add New Word", message: nil, preferredStyle: .alert)
        alert.addTextField { textField in
            textField.placeholder = "Enter the new word"
        }
        let addAction = UIAlertAction(title: "Add", style: .default) { [weak self] _ in
            if let newWord = alert.textFields?.first?.text, !newWord.isEmpty {
                self?.arr.insert(newWord, at: (self?.arr.count)! - 1 )
                self?.collectionView.collection.reloadData()
            }
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(addAction)
        alert.addAction(cancelAction)
        present(alert, animated: true, completion: nil)
    }
    
    
}
