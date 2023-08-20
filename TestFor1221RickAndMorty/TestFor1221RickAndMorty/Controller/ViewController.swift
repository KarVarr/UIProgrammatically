//
//  ViewController.swift
//  TestFor1221RickAndMorty
//
//  Created by Karen Vardanian on 17.08.2023.
//

import UIKit

class ViewController: UIViewController {
    let networkManager = NetworkManager()
    var character: [Character] = []
    var episodes: [EpisodeDetails] = []
    var locations: [LocationDetails] = []
    
    let collectionView = CollectionView()
    
    let imageCache = NSCache<NSString, UIImage>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        fetchData()
        addViews()
        settingsForNav()
        settings()
        layout()
        
        collectionViewDelegates()
        
    }
    
    func fetchData() {

        networkManager.requestData(from: "https://rickandmortyapi.com/api/character", responseType: CharacterResponse.self) { [weak self] characterResponse in
            self?.character = characterResponse.results
            DispatchQueue.main.async {
                self?.collectionView.collection.reloadData()
            }
        }

        networkManager.requestData(from: "https://rickandmortyapi.com/api/location", responseType: LocationDetailsResponse.self) { [weak self] locationResponse in
            self?.locations = locationResponse.results
            DispatchQueue.main.async {
                self?.collectionView.collection.reloadData()
            }
        }

        networkManager.requestData(from: "https://rickandmortyapi.com/api/episode", responseType: EpisodeDetailsResponse.self) { [weak self] episodeResponse in
            self?.episodes = episodeResponse.results
            DispatchQueue.main.async {
                self?.collectionView.collection.reloadData()
            }
        }
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

