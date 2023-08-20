//
//  ViewController.swift
//  TestFor1221RickAndMorty
//
//  Created by Karen Vardanian on 17.08.2023.
//

import UIKit

class ViewController: UIViewController {
    let networkManage = NetworkManager()
    let collectionView = CollectionView()
    var character: [Character] = []
    
    let imageCache = NSCache<NSString, UIImage>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addViews()
        settingsForNav()
        settings()
        layout()
        
        collectionViewDelegates()
        
        networkManage.onCompletion = { characterResponse in
            self.character = characterResponse.results
            DispatchQueue.main.async {
                self.collectionView.collection.reloadData()
            }
        }
        
        networkManage.requestCharacters()
    }
    
   
    func addViews() {
        view.addSubview(collectionView.collection)
    }
    
    func settingsForNav() {
        title = Helper.Strings.title
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.tintColor = Helper.Colors.whiteColor
          
    }
    
    func settings() {
        view.backgroundColor = Helper.Colors.mainBlackColor
    }
    
    func layout() {
        let collectionView = collectionView.collection
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    
    
}

