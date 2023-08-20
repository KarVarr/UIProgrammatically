//
//  DetailViewController.swift
//  TestFor1221RickAndMorty
//
//  Created by Karen Vardanian on 18.08.2023.
//

import UIKit

class DetailViewController: UIViewController {
    let networkManager = NetworkManager()
    var character: [Character] = []
    var episodes: [EpisodeDetails] = []
    var locations: [LocationDetails] = []
    
    
    var characterImage: UIImage?
    var characterName: String?
    var characterStatus: String?
    
    let tableVC = CustomTableView()
    
    let verticalSV = CustomStackView()
    var charImage = CustomImageView()
    var charName = CustomLabelView()
    var charStatus = CustomLabelView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addViews()
        settings()
        tableViewDelegatesAndRegister()
        settingsForStack()
        settingsForLabels()
        settingsForImages()
        layout()
        fetchData()
        
        if let image = characterImage {
            charImage.customImage.image = image
        }
        charName.labelView.text = characterName
        charStatus.labelView.text = characterStatus
        
        switch charStatus.labelView.text {
        case "Alive": charStatus.labelView.textColor = Helper.Colors.greenColor
        case "Dead": charStatus.labelView.textColor = Helper.Colors.redColor
        case "Unknown": charStatus.labelView.textColor = Helper.Colors.orangeColor
        default: break
        }
        
    }
    
    func fetchData() {
        
        networkManager.requestData(from: "https://rickandmortyapi.com/api/character", responseType: CharacterResponse.self) { [weak self] characterResponse in
            self?.character = characterResponse.results
            DispatchQueue.main.async {
                self?.tableVC.table.reloadData()
            }
        }
        
        networkManager.requestData(from: "https://rickandmortyapi.com/api/location", responseType: LocationDetailsResponse.self) { [weak self] locationResponse in
            self?.locations = locationResponse.results
            DispatchQueue.main.async {
                self?.tableVC.table.reloadData()
            }
        }
        
        networkManager.requestData(from: "https://rickandmortyapi.com/api/episode", responseType: EpisodeDetailsResponse.self) { [weak self] episodeResponse in
            self?.episodes = episodeResponse.results
            DispatchQueue.main.async {
                self?.tableVC.table.reloadData()
            }
        }
    }

    
}



//MARK: - Extension

extension DetailViewController {
    private func settings() {
        view.backgroundColor = Helper.Colors.mainBlackColor
        
    }
    private func addViews() {
        view.addSubview(verticalSV.stack)
        verticalSV.stack.addArrangedSubview(charImage.customImage)
        verticalSV.stack.addArrangedSubview(charName.labelView)
        verticalSV.stack.addArrangedSubview(charStatus.labelView)
        
        view.addSubview(tableVC.table)
    }
    
    private func settingsForImages() {
        charImage.customImage.image = UIImage(systemName: "plus")
        charImage.customImage.layer.cornerRadius = 16
    }
    
    private func settingsForLabels() {
        charName.labelView.font = Helper.Fonts.GillSansSemiBold(with: 22)
        charName.labelView.textColor = Helper.Colors.whiteColor
        
        charStatus.labelView.font = Helper.Fonts.AppleSDGothicSemiBold(with: 16)
    }
    
    private func settingsForStack() {
        verticalSV.stack.axis = .vertical
        verticalSV.stack.alignment = .center
        verticalSV.stack.spacing = 24
    }
    
    private func layout() {
        let vStackView = verticalSV.stack
        let image = charImage.customImage
        let name = charName.labelView
        let status = charStatus.labelView
        
        let tableView = tableVC.table
        
        NSLayoutConstraint.activate([
            vStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -25),
            vStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.widthAnchor.constraint(equalToConstant: 148),
            image.heightAnchor.constraint(equalToConstant: 148),
            status.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 8),
            
            tableView.topAnchor.constraint(equalTo: vStackView.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}
