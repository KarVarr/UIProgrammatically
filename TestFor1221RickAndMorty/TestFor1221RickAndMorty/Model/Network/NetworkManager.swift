//
//  NetworkManager.swift
//  TestFor1221RickAndMorty
//
//  Created by Karen Vardanian on 18.08.2023.
//

import Foundation


class NetworkManager {
    
    var onCompletion: ((CharacterResponse) -> Void)?
    var onCompletionLocation: ((LocationDetailsResponse) -> Void)?
    var onCompletionEpisodes: ((EpisodeDetailsResponse) -> Void)?
    
    func requestCharacters() {
        let urlString = "https://rickandmortyapi.com/api/character"
        guard let url = URL(string: urlString) else { return }
        
        let session = URLSession.shared
        session.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error: \(error)")
                return
            }
            
            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    let characters = try decoder.decode(CharacterResponse.self, from: data)
                    self.onCompletion?(characters)
                } catch  {
                    print("JSON decoding error: \(error)")
                }
            }
            
        }.resume()
    }
    
    func requestLocations() {
        let urlString = "https://rickandmortyapi.com/api/location"
        guard let url = URL(string: urlString) else { return }
        
        let session = URLSession.shared
        session.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error: \(error)")
                return
            }
            
            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    let characters = try decoder.decode(LocationDetailsResponse.self, from: data)
                    self.onCompletionLocation?(characters)
                } catch  {
                    print("JSON decoding error: \(error)")
                }
            }
            
        }.resume()
    }
    
    func requestEpisodes() {
        let urlString = "https://rickandmortyapi.com/api/episode"
        guard let url = URL(string: urlString) else { return }
        
        let session = URLSession.shared
        session.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error: \(error)")
                return
            }
            
            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    let characters = try decoder.decode(EpisodeDetailsResponse.self, from: data)
                    self.onCompletionEpisodes?(characters)
                } catch  {
                    print("JSON decoding error: \(error)")
                }
            }
            
        }.resume()
    }
    
}
